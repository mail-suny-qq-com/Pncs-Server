package me.zhengjie.modules.system.service.impl;

import cn.hutool.core.util.StrUtil;
import me.zhengjie.modules.system.domain.User;
import me.zhengjie.exception.EntityExistException;
import me.zhengjie.exception.EntityNotFoundException;
import me.zhengjie.modules.system.domain.UserAvatar;
import me.zhengjie.modules.system.repository.UserAvatarRepository;
import me.zhengjie.modules.system.repository.UserRepository;
import me.zhengjie.modules.system.service.UserService;
import me.zhengjie.modules.system.service.dto.RoleSmallDto;
import me.zhengjie.modules.system.service.dto.UserDto;
import me.zhengjie.modules.system.service.dto.UserQueryCriteria;
import me.zhengjie.modules.system.service.mapper.UserMapper;
import me.zhengjie.utils.*;
import org.hibernate.SQLQuery;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.*;
import java.util.stream.Collectors;

/**
 * @author Zheng Jie
 * @date 2018-11-23
 */
@Service
//@CacheConfig(cacheNames = "user")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final UserMapper userMapper;
    private final RedisUtils redisUtils;
    private final UserAvatarRepository userAvatarRepository;
    private final EntityManager entityManager;

    @Value("${file.image}")
    private String avatar;

    public UserServiceImpl(UserRepository userRepository, UserMapper userMapper, RedisUtils redisUtils, UserAvatarRepository userAvatarRepository,EntityManager entityManager) {
        this.userRepository = userRepository;
        this.userMapper = userMapper;
        this.redisUtils = redisUtils;
        this.userAvatarRepository = userAvatarRepository;
        this.entityManager = entityManager;
    }

    @Override
    //@Cacheable
    public Object queryAll(UserQueryCriteria criteria, Pageable pageable) {
        Page<User> page = userRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(userMapper::toDto));
    }

    @Override
    //@Cacheable
    public List<UserDto> queryAll(UserQueryCriteria criteria) {
        List<User> users = userRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder));
        return userMapper.toDto(users);
    }

    @Override
    //@Cacheablekey = "#p0")
    public UserDto findById(String id) {
        User user = userRepository.findById(id).orElseGet(User::new);
        ValidationUtil.isNull(user.getId(),"User","id",id);
        return userMapper.toDto(user);
    }

    @Override
    //@CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public UserDto create(User resources) {
        if(userRepository.findByUsername(resources.getUsername())!=null){
            throw new EntityExistException(User.class,"username",resources.getUsername());
        }
        if(userRepository.findByEmail(resources.getEmail())!=null){
            throw new EntityExistException(User.class,"email",resources.getEmail());
        }
        return userMapper.toDto(userRepository.save(resources));
    }

    @Override
    //@CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void update(User resources) {
        User user = userRepository.findById(resources.getId()).orElseGet(User::new);
        ValidationUtil.isNull(user.getId(),"User","id",resources.getId());
        User user1 = userRepository.findByUsername(user.getUsername());
        User user2 = userRepository.findByEmail(user.getEmail());

        if(user1 !=null&&!user.getId().equals(user1.getId())){
            throw new EntityExistException(User.class,"username",resources.getUsername());
        }

        if(user2!=null&&!user.getId().equals(user2.getId())){
            throw new EntityExistException(User.class,"email",resources.getEmail());
        }

        // 如果用户的角色改变了，需要手动清理下缓存
        if (!resources.getRoles().equals(user.getRoles())) {
            String key = "role::loadPermissionByUser:" + user.getUsername();
            redisUtils.del(key);
            key = "role::findByUsers_Id:" + user.getId();
            redisUtils.del(key);
        }

        user.setUsername(resources.getUsername());
        user.setEmail(resources.getEmail());
        user.setEnabled(resources.getEnabled());
        user.setRoles(resources.getRoles());
        user.setDept(resources.getDept());
        user.setPhone(resources.getPhone());
        user.setNickName(resources.getNickName());
        user.setSex(resources.getSex());
        userRepository.save(user);
    }

    @Override
    //@CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void updateCenter(User resources) {
        User user = userRepository.findById(resources.getId()).orElseGet(User::new);
        user.setNickName(resources.getNickName());
        user.setPhone(resources.getPhone());
        user.setSex(resources.getSex());
        userRepository.save(user);
    }

    @Override
    //@CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<String> ids) {
        for (String id : ids) {
            userRepository.deleteById(id);
        }
    }

    @Override
//    //@Cacheablekey = "'loadUserByUsername:'+#p0")
    public UserDto findByName(String userName) {
        User user;
        if(ValidationUtil.isEmail(userName)){
            user = userRepository.findByEmail(userName);
        } else {
            user = userRepository.findByUsername(userName);
        }
        if (user == null) {
            throw new EntityNotFoundException(User.class, "name", userName);
        } else {
            return userMapper.toDto(user);
        }
    }

    @Override
    //@CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void updatePass(String username, String pass) {
        userRepository.updatePass(username,pass,new Date());
    }

    @Override
    //@CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void updateAvatar(MultipartFile multipartFile) {
        User user = userRepository.findByUsername(SecurityUtils.getUsername());
        File imagePathDir = new File(avatar);
        if(!imagePathDir.exists()){
            imagePathDir.mkdirs();
        }
        String fileName = multipartFile.getOriginalFilename();
        String prefix="."+ FileUtil.getExtensionName(fileName);
        String userId = SecurityUtils.getUserId();
        String avatarFilePath = avatar + userId + prefix;
        File avatarFile = new File(avatarFilePath);
        String avatarUrl = "/image/" + userId + prefix;
        try {
            FileUtil.writeFromStream(multipartFile.getInputStream(),avatarFilePath);
            user.setAvatar(avatarUrl);
            userRepository.save(user);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    //@CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void updateEmail(String username, String email) {
        userRepository.updateEmail(username,email);
    }

    @Override
    public void download(List<UserDto> queryAll, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (UserDto userDTO : queryAll) {
            List<String> roles = userDTO.getRoles().stream().map(RoleSmallDto::getName).collect(Collectors.toList());
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("用户名", userDTO.getUsername());
            map.put("头像", userDTO.getAvatar());
            map.put("邮箱", userDTO.getEmail());
            map.put("状态", userDTO.getEnabled() ? "启用" : "禁用");
            map.put("手机号码", userDTO.getPhone());
            map.put("角色", roles);
            map.put("部门", userDTO.getDept().getName());
            map.put("岗位", userDTO.getJob().getName());
            map.put("最后修改密码的时间", userDTO.getLastPasswordResetTime());
            map.put("创建日期", userDTO.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

    @Override
    public Object queryUserList(UserQueryCriteria criteria, Pageable pageable) {
        StringBuilder countSqlSb = new StringBuilder();
        countSqlSb.append(" select count(1) from el_user u where 1=1 ");
        StringBuilder selectSqlSb = new StringBuilder();
        selectSqlSb.append(" select u.id,u.username,u.nick_name nickname,u.email,u.phone,d.name deptname from el_user u left join dept d on u.dept_id=d.id where 1=1 ");
        StringBuilder whereSql = new StringBuilder();
        Map<String,Object> params = new HashMap<>();
        if(StrUtil.isNotEmpty(criteria.getDeptId())){
            whereSql.append(" and u.dept_id like :deptId ");
            params.put("deptId",criteria.getDeptId()+"%");
        }
        if(StrUtil.isNotEmpty(criteria.getBlurry())){
            whereSql.append(" and (u.email like :blurry or u.username like :blurry or u.nick_name like :blurry) ");
            params.put("blurry","%"+criteria.getBlurry()+"%");
        }
        if(null!=criteria.getEnabled()){
            whereSql.append(" and u.enabled=:enabled ");
            params.put("enabled",criteria.getEnabled()?"1":"0");
        }
        String countSql = new StringBuilder().append(countSqlSb).append(whereSql).toString();
        Query countQuery = entityManager.createNativeQuery(countSql);
        for (Map.Entry<String,Object> entry : params.entrySet())
        {
            countQuery.setParameter(entry.getKey(),entry.getValue());
        }
        BigInteger totalCount = (BigInteger) countQuery.getSingleResult();
        String orderBySql = " order by u.create_time desc ";
        String selectSql = new StringBuilder().append(selectSqlSb).append(whereSql).append(orderBySql).toString();
        Query query = entityManager.createNativeQuery(selectSql);
        for (Map.Entry<String,Object> entry:params.entrySet())
        {
            query.setParameter(entry.getKey(),entry.getValue());
        }
        query.unwrap(SQLQuery.class).setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP);
        query.setFirstResult((int) pageable.getOffset());
        query.setMaxResults(pageable.getPageSize());
        List list= query.getResultList();
        Page page = new PageImpl<>(list,pageable,totalCount.longValue());
        return page;
    }
}
