package com.better.controller;

import com.alibaba.fastjson.JSONArray;
import com.better.domain.ParamPojo;
import com.better.domain.Result;
import com.better.domain.User;
import com.better.service.UserService;
import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/user",method = RequestMethod.GET)
    public String findAllUser(ModelMap modelMap){

        List<User> userList = userService.findAllUser();

        modelMap.addAttribute("userList",userList);

        return "user";
    }

    @ResponseBody
    @RequestMapping("/user/test")
    public Map findAllUser(@RequestBody List<Integer> ids){

        for (Integer id: ids) {
            System.out.println(id);
        }

        Result result = new Result();
        result.setStatus("SSS");
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("success",true);

        return resultMap;
    }
}
