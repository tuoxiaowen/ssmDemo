package com.suncaper.demo.common.sessionutils;

import com.suncaper.demo.entity.User;

public class SecurityUtils {
    public static User getCurUser(){
        //获取当前登录信息
        User user= SessionUtils.getCurUser();
        if (user==null){
            //模拟登陆
            User curUser=new User();
            curUser.setSn("111");
            curUser.setRoleId(1L);
        }
        return user;
    }
}
