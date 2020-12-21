package com.suncaper.demo.controller;

import com.suncaper.demo.common.sessionutils.SecurityUtils;
import com.suncaper.demo.common.sessionutils.SessionUtils;
import com.suncaper.demo.entity.User;
import com.suncaper.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/user")
@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("login")
    public String login(User user, Model model) {
        User loginUser = userService.login(user);
        SessionUtils.saveCurUser(loginUser);//将获取到的对象保存起来
        User curUser = SecurityUtils.getCurUser();//获取当前user
        if (curUser!=null){
            return "main";
        }
        model.addAttribute("msg", "该用户已存在");
        return "main";
    }
    @RequestMapping("batch")
    public String batch(){
        return"batch";
    }
}
