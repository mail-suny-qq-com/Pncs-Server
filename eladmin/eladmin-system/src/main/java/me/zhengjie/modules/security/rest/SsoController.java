package me.zhengjie.modules.security.rest;

import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Clock;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.impl.DefaultClock;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;
import io.swagger.annotations.ApiOperation;
import lombok.NonNull;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.annotation.AnonymousAccess;
import me.zhengjie.modules.security.security.TokenProvider;
import me.zhengjie.modules.security.security.vo.OnlineUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.security.Key;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/**
 * @author Zheng Jie
 * @date 2018-11-23
 * 授权、根据token获取用户详细信息
 */
@Slf4j
@RestController
@RequestMapping("sso")
public class SsoController {
    @Value("${sso.key}")
    private String ssoKey;
    @Value("${sso.base64-secret}")
    private String sso_secret;
    @Value("${sso.expiration}")
    private Long sso_expiration;

    @Value("${jwt.online-key}")
    private String onlineKey;

    @Autowired
    private TokenProvider tokenProvider;

    @Autowired
    private RedisTemplate redisTemplate;

    /**
     * 通过浏览器获取票据
     * @param sysName
     * @param userName
     * @param fullName
     * @param phone
     * @param email
     * @param expiration
     * @return
     */
    @GetMapping(value = "/ticket")
    @AnonymousAccess
    public ResponseEntity getTicket(String sysName,String userName,String fullName,String phone,String email,Long expiration) {
        if(null == expiration){
            expiration = Long.valueOf(1000 * 60 * 5);
        }
        JSONObject jsonObject = new JSONObject();
        String ticket = createTicket(sysName,expiration);
        OnlineUser onlineUser = new OnlineUser();
        onlineUser.setUserName(userName);
        onlineUser.setNickName(fullName);
        onlineUser.setPhone(phone);
        onlineUser.setEmail(email);
        onlineUser.setLoginTime(new Date());
        String str = IdUtil.simpleUUID();
        redisTemplate.opsForValue().set(onlineKey + "ticket" + str, onlineUser);
        redisTemplate.expire(onlineKey + "ticket" + str,expiration, TimeUnit.SECONDS);
        redisTemplate.opsForValue().set(ssoKey + ticket, onlineKey + "ticket" + str);
        redisTemplate.expire(ssoKey + ticket,expiration, TimeUnit.SECONDS);
        jsonObject.put("ticket",ticket);
        return ResponseEntity.ok(jsonObject);
    }

    /**
     * 申请ticket接口
     *
     * @return
     */
    @ApiOperation("获取ticket")
    @PostMapping(value = "/ticket")
    public ResponseEntity getTicket(@Validated @RequestBody String menuid, HttpServletRequest request) {
        JSONObject jsonObject = new JSONObject();
        String ticket = createTicket(menuid,sso_expiration);
        String token = tokenProvider.getToken(request);
        redisTemplate.opsForValue().set(ssoKey + ticket, onlineKey + token);
        redisTemplate.expire(ssoKey + ticket,sso_expiration, TimeUnit.SECONDS);
        jsonObject.put("ticket",ticket);
        return ResponseEntity.ok(jsonObject);
    }

    /**
     * 验证 ticket 接口
     * @return
     */
    @ApiOperation("验证ticket")
    @AnonymousAccess
    @PostMapping(value = "/check")
    public ResponseEntity checkTicket(HttpServletRequest request) {
        JSONObject jsonObject = new JSONObject();
        try{
            String ticket = request.getParameter("ticket");
            Boolean validate = validateSsoTicket(ticket);
            if(validate){
                String onlineToken = (String) redisTemplate.opsForValue().get(ssoKey + ticket);
                if(StrUtil.isEmpty(onlineToken)){
                    jsonObject.put("code","01");
                    jsonObject.put("msg","票据无效,票据已使用");
                    jsonObject.put("info",new JSONObject());
                }else{
                    Object o = redisTemplate.opsForValue().get(onlineToken);
                    if(o!=null){
                        OnlineUser onlineUser = (OnlineUser)o;
                        JSONObject info = new JSONObject();
                        info.put("phone", onlineUser.getPhone());
                        info.put("userName", onlineUser.getUserName());
                        info.put("fullName", onlineUser.getNickName());
                        info.put("email", onlineUser.getEmail());
                        jsonObject.put("code","00");
                        jsonObject.put("msg","验证通过");
                        jsonObject.put("info",info);
                    }else{
                        jsonObject.put("code","01");
                        jsonObject.put("msg","票据无效,用户已下线");
                        jsonObject.put("info",new JSONObject());
                    }
                }
            }else{
                jsonObject.put("code","02");
                jsonObject.put("msg","票据过期");
                jsonObject.put("info",new JSONObject());
            }
        }catch (Exception e){
            log.error(e.getMessage());
            jsonObject.put("code","01");
            jsonObject.put("msg","票据无效");
            jsonObject.put("info",new JSONObject());
        }
        return ResponseEntity.ok(jsonObject);
    }

    @ApiOperation("接收外部系统传入的token")
    @AnonymousAccess
    @PostMapping(value = "/saveToken")
    public ResponseEntity saveToken(@NonNull String ticket,
                                    @NonNull String sysName,
                                    @NonNull String token,
                                    @NonNull String callback,
                                    @NonNull String expiration){
        JSONObject result = new JSONObject();
        try {
            String onlineToken = (String) redisTemplate.opsForValue().get(ssoKey + ticket);
            if(StrUtil.isEmpty(onlineToken)){
                result.put("code","01");
                result.put("msg","票据无效");
            }else{
                String key = onlineToken + "-" + sysName;
                JSONArray array = new JSONArray();
                JSONObject object = new JSONObject();
                object.put("token",token);
                object.put("callback",callback);
                Object o = redisTemplate.opsForValue().get(key);
                if(o!=null){
                    array = (JSONArray) o;
                }
                array.add(object);
                redisTemplate.opsForValue().set(key, array);
                redisTemplate.expire(key,Long.parseLong(expiration), TimeUnit.SECONDS);
                result.put("code","00");
                result.put("msg","ok");
            }
            redisTemplate.delete(ssoKey + ticket);
        }catch (Exception e){
            log.error(e.getMessage());
            result.put("code","02");
            result.put("msg","票据无效,未知错误");
        }
        return ResponseEntity.ok(result);
    }

    //生成票据 验证票据
    private Clock clock = DefaultClock.INSTANCE;
    private String createTicket(String menuid,long expiration) {
        final Date createdDate = clock.now();
        final Date expirationDate = new Date(createdDate.getTime() + expiration);
        byte[] keyBytes = Decoders.BASE64.decode(sso_secret);
        Key key = Keys.hmacShaKeyFor(keyBytes);
        Map<String, Object> claims = new HashMap<>();
        claims.put("iss","portal");
        claims.put("aud",menuid);
        return Jwts.builder()
                .setClaims(claims)
                .setSubject("protal sso " + menuid)
                .setIssuedAt(createdDate)
                .setExpiration(expirationDate)
                .signWith(key, SignatureAlgorithm.HS512)
                .compact();
    }
    private Boolean validateSsoTicket(String ticket) {
        byte[] keyBytes = Decoders.BASE64.decode(sso_secret);
        Key key = Keys.hmacShaKeyFor(keyBytes);
        Claims claims =  Jwts.parser().setSigningKey(key).parseClaimsJws(ticket).getBody();
        Date expiration = claims.getExpiration();
        return !expiration.before(clock.now());
    }
}
