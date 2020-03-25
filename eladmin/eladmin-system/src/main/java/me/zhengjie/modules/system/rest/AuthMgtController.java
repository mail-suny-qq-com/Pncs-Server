package me.zhengjie.modules.system.rest;

import com.alibaba.fastjson.JSONObject;
import io.swagger.annotations.Api;
import me.zhengjie.modules.system.service.AuthMgtService;
import me.zhengjie.modules.system.service.dto.ObjectMenus;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@Api(tags = "权限管理管理")
@RestController
@RequestMapping("/api/authMgt")
public class AuthMgtController {
    private final AuthMgtService authMgtService;

    public AuthMgtController(AuthMgtService authMgtService) {
        this.authMgtService = authMgtService;
    }

    @GetMapping("/menus")
    public ResponseEntity<Object> getObjectMenus(String type, String id){
        JSONObject result = new JSONObject();
        result.put("adminMenus",authMgtService.getAdminMenus(type,id));
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @PostMapping("/menus")
    public ResponseEntity<Object> saveObjectMenus(@RequestBody ObjectMenus object){
        authMgtService.saveAdminMenus(object);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
