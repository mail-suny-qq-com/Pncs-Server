package me.zhengjie.modules.system.service.impl;

import me.zhengjie.exception.EntityExistException;
import me.zhengjie.modules.system.domain.Role;
import me.zhengjie.modules.system.repository.RoleRepository;
import me.zhengjie.modules.system.service.RoleService;
import me.zhengjie.modules.system.service.dto.RoleDto;
import me.zhengjie.modules.system.service.dto.RoleQueryCriteria;
import me.zhengjie.modules.system.service.dto.RoleSmallDto;
import me.zhengjie.modules.system.service.dto.UserDto;
import me.zhengjie.modules.system.service.mapper.RoleMapper;
import me.zhengjie.modules.system.service.mapper.RoleSmallMapper;
import me.zhengjie.utils.*;
import org.hibernate.SQLQuery;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

/**
 * @author Zheng Jie
 * @date 2018-12-03
 */
@Service
//@CacheConfig(cacheNames = "role")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class RoleServiceImpl implements RoleService {

    private final RoleRepository roleRepository;

    private final RoleMapper roleMapper;

    private final RoleSmallMapper roleSmallMapper;

    @Autowired
    private EntityManager entityManager;

    public RoleServiceImpl(RoleRepository roleRepository, RoleMapper roleMapper, RoleSmallMapper roleSmallMapper) {
        this.roleRepository = roleRepository;
        this.roleMapper = roleMapper;
        this.roleSmallMapper = roleSmallMapper;
    }

    @Override
    //@Cacheable
    public Object queryAll(Pageable pageable) {
        return roleMapper.toDto(roleRepository.findAll(pageable).getContent());
    }

    @Override
    //@Cacheable
    public List<RoleDto> queryAll(RoleQueryCriteria criteria) {
        return roleMapper.toDto(roleRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    //@Cacheable
    public Object queryAll(RoleQueryCriteria criteria, Pageable pageable) {
        Page<Role> page = roleRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(roleMapper::toDto));
    }

    @Override
    //@Cacheablekey = "#p0")
    public RoleDto findById(String id) {
        Role role = roleRepository.findById(id).orElseGet(Role::new);
        ValidationUtil.isNull(role.getId(),"Role","id",id);
        return roleMapper.toDto(role);
    }

    @Override
    //@CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public RoleDto create(Role resources) {
        if(roleRepository.findByName(resources.getName()) != null){
            throw new EntityExistException(Role.class,"username",resources.getName());
        }
        return roleMapper.toDto(roleRepository.save(resources));
    }

    @Override
    //@CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void update(Role resources) {
        Role role = roleRepository.findById(resources.getId()).orElseGet(Role::new);
        ValidationUtil.isNull(role.getId(),"Role","id",resources.getId());

        Role role1 = roleRepository.findByName(resources.getName());

        if(role1 != null && !role1.getId().equals(role.getId())){
            throw new EntityExistException(Role.class,"username",resources.getName());
        }
        role1 = roleRepository.findByPermission(resources.getPermission());
        if(role1 != null && !role1.getId().equals(role.getId())){
            throw new EntityExistException(Role.class,"permission",resources.getPermission());
        }
        role.setName(resources.getName());
        role.setRemark(resources.getRemark());
        role.setDataScope(resources.getDataScope());
        role.setDepts(resources.getDepts());
        role.setLevel(resources.getLevel());
        role.setPermission(resources.getPermission());
        roleRepository.save(role);
    }

    @Override
    //@CacheEvict(allEntries = true)
    public void updateMenu(Role resources, RoleDto roleDTO) {
        Role role = roleMapper.toEntity(roleDTO);
//        role.setMenus(resources.getMenus());
        roleRepository.save(role);
    }

    @Override
    //@CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void untiedMenu(String id) {
        roleRepository.untiedMenu(id);
    }

    @Override
    //@CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<String> ids) {
        for (String id : ids) {
            roleRepository.deleteById(id);
        }
    }

    @Override
    //@Cacheablekey = "'findByUsers_Id:' + #p0")
    public List<RoleSmallDto> findByUsersId(String id) {
        return roleSmallMapper.toDto(new ArrayList<>(roleRepository.findByUsers_Id(id)));
    }

    @Override
    //@Cacheable
    public Integer findByRoles(Set<Role> roles) {
        Set<RoleDto> roleDtos = new HashSet<>();
        for (Role role : roles) {
            roleDtos.add(findById(role.getId()));
        }
        return Collections.min(roleDtos.stream().map(RoleDto::getLevel).collect(Collectors.toList()));
    }

    @Override
    //@Cacheablekey = "'loadPermissionByUser:' + #p0.username")
    public Collection<GrantedAuthority> mapToGrantedAuthorities(UserDto user) {
        /*Set<Role> roles = roleRepository.findByUsers_Id(user.getId());
        Set<String> permissions = roles.stream().filter(role -> StringUtils.isNotBlank(role.getPermission())).map(Role::getPermission).collect(Collectors.toSet());
        permissions.addAll(
                roles.stream().flatMap(role -> role.getMenus().stream())
                        .filter(menu -> StringUtils.isNotBlank(menu.getPermission()))
                        .map(Menu::getPermission).collect(Collectors.toSet())
        );
        return permissions.stream().map(SimpleGrantedAuthority::new)
                .collect(Collectors.toList());*/

        // 重写查询用户权限功能
        Set<String> permissions = new HashSet<>();
        //查询机构权限
        String deptId = user.getDept().getId();
        String sql = "select m.permission from object_menus o left join menu m on o.menu_id=m.id where o.object_type=:type and o.object_id=:id";
        List<String> deptPermissions = entityManager.createNativeQuery(sql).setParameter("type","dept").setParameter("id", deptId).getResultList();
        for (String str:deptPermissions){
            if(StringUtils.isNotBlank(str)){
                permissions.add(str);
            }
        }
        //查询角色权限
        Set<Role> roles = roleRepository.findByUsers_Id(user.getId());
        if(!CollectionUtils.isEmpty(roles) && !CollectionUtils.isEmpty(roles)){
            for (Role role:roles){
                if(StringUtils.isNoneBlank(role.getPermission())){
                    permissions.add(role.getPermission());
                }
                List<String> rolePermissions = entityManager.createNativeQuery(sql).setParameter("type","role")
                        .setParameter("id", role.getId()).getResultList();
                for (String str:rolePermissions){
                    if(StringUtils.isNotBlank(str)){
                        permissions.add(str);
                    }
                }
            }
        }
        //查询用户权限
        List<String> userPermissions = entityManager.createNativeQuery(sql).setParameter("type","user")
                .setParameter("id", user.getId()).getResultList();
        if(userPermissions!=null && userPermissions.size()>0){
            for (String str:userPermissions){
                if(StringUtils.isNotBlank(str)){
                    permissions.add(str);
                }
            }
        }
        return permissions.stream().map(SimpleGrantedAuthority::new)
                .collect(Collectors.toList());
    }

    @Override
    public Map<String, Object> queryUserAuthorities(UserDto user) {
        // 重写查询用户权限功能
        Map<String,Object> result = new HashMap<>();
        boolean isAdmin = false;
        Set<String> permissions = new HashSet<>();
        //查询机构权限
        String deptId = user.getDept().getId();
        String sql = "select m.permission from object_menus o left join menu m on o.menu_id=m.id where o.object_type=:type and o.object_id=:id";
        List<String> deptPermissions = entityManager.createNativeQuery(sql).setParameter("type","dept").setParameter("id", deptId).getResultList();
        for (String str:deptPermissions){
            if(StringUtils.isNotBlank(str)){
                permissions.add(str);
            }
            if(!isAdmin){
                isAdmin = true;
            }
        }

        //查询角色权限
        Set<Role> roles = roleRepository.findByUsers_Id(user.getId());
        if(!CollectionUtils.isEmpty(roles) && !CollectionUtils.isEmpty(roles)){
            for (Role role:roles){
                if(StringUtils.isNoneBlank(role.getPermission())){
                    permissions.add(role.getPermission());
                }
                List<String> rolePermissions = entityManager.createNativeQuery(sql).setParameter("type","role")
                        .setParameter("id", role.getId()).getResultList();
                for (String str:rolePermissions){
                    if(StringUtils.isNotBlank(str)){
                        permissions.add(str);
                    }
                    if(!isAdmin){
                        isAdmin = true;
                    }
                }
            }
        }
        //查询用户权限
        List<String> userPermissions = entityManager.createNativeQuery(sql).setParameter("type","user")
                .setParameter("id", user.getId()).getResultList();
        if(userPermissions!=null && userPermissions.size()>0){
            for (String str:userPermissions){
                if(StringUtils.isNotBlank(str)){
                    permissions.add(str);
                }
                if(!isAdmin){
                    isAdmin = true;
                }
            }
        }

        if(permissions.size()==0){
            permissions.add("DEFAULT_AUTHORITY");
        }
        Collection<GrantedAuthority> authorities = permissions.stream().map(SimpleGrantedAuthority::new)
                .collect(Collectors.toList());
        result.put("isAdmin",isAdmin);
        result.put("authorities",authorities);
        return result;
    }

    @Override
    public void download(List<RoleDto> roles, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (RoleDto role : roles) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("角色名称", role.getName());
            map.put("默认权限", role.getPermission());
            map.put("角色级别", role.getLevel());
            map.put("描述", role.getRemark());
            map.put("创建日期", role.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

    @Override
    public List queryUserByRole(String roleId) {
        String sql = "select u.id,u.username,u.nick_name nickname,u.email,u.phone,d.name deptname from users_roles ur left join el_user u on ur.user_id=u.id left join dept d on u.dept_id=d.id where role_id=:roleId";
        return entityManager.createNativeQuery(sql).setParameter("roleId",roleId).unwrap(SQLQuery.class).setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).getResultList();
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void saveUserRoles(String roleId, String[] userIds) {
        String sql = "insert into users_roles values(?,?)";
        entityManager.createNativeQuery("delete from users_roles where role_id=:roleId").setParameter("roleId",roleId).executeUpdate();
        for (String userId:userIds){
            entityManager.createNativeQuery(sql).setParameter(1,userId).setParameter(2,roleId).executeUpdate();
        }
    }
}
