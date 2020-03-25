package me.zhengjie.modules.security.service;

import me.zhengjie.exception.BadRequestException;
import me.zhengjie.modules.security.security.vo.JwtUser;
import me.zhengjie.modules.system.service.RoleService;
import me.zhengjie.modules.system.service.UserService;
import me.zhengjie.modules.system.service.dto.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * @author Zheng Jie
 * @date 2018-11-22
 */
@Service("userDetailsService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class UserDetailsServiceImpl implements UserDetailsService {

    private final UserService userService;

    private final RoleService roleService;

    public UserDetailsServiceImpl(UserService userService, RoleService roleService) {
        this.userService = userService;
        this.roleService = roleService;
    }

    @Override
    public UserDetails loadUserByUsername(String username){
        UserDto user = userService.findByName(username);
        if (user == null) {
            throw new BadRequestException("账号不存在");
        } else {
            if (!user.getEnabled()) {
                throw new BadRequestException("账号未激活");
            }
            return createJwtUser(user);
        }
    }

    private UserDetails createJwtUser(UserDto user) {
        List<RoleSmallDto> roleList = roleService.findByUsersId(user.getId());
        List<String> roleIds = new ArrayList<>();
        Optional.ofNullable(roleList).orElse(new ArrayList<>());
        roleList.forEach(roleSmallDto -> roleIds.add(roleSmallDto.getId()));
        Map<String, Object> objectMap = roleService.queryUserAuthorities(user);
        boolean isAdmin = (boolean) objectMap.get("isAdmin");
        Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) objectMap.get("authorities");
        return new JwtUser(
                user.getId(),
                user.getUsername(),
                user.getNickName(),
                user.getSex(),
                user.getPassword(),
                user.getAvatar(),
                user.getEmail(),
                user.getPhone(),
                Optional.ofNullable(user.getDept()).map(DeptSmallDto::getName).orElse(null),
                Optional.ofNullable(user.getJob()).map(JobSmallDto::getName).orElse(null),
                //deptId
                Optional.ofNullable(user.getDept()).map(DeptSmallDto::getId).orElse(null),
                //roleIds
                roleIds,
                authorities,
                isAdmin,
                user.getEnabled(),
                user.getCreateTime(),
                user.getLastPasswordResetTime()
        );
    }
}
