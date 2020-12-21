package com.suncaper.demo.common.sessionutils;

import com.suncaper.demo.entity.User;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionUtils {
    private static final String LOGINUSER="loginUser";
    public static void saveCurUser(User user){
        getSession().setAttribute(LOGINUSER,user);
    }
    public static HttpSession getSession(){
        ServletRequestAttributes attr= (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpServletRequest request=attr.getRequest();
        return request.getSession();
    }
    public static  User getCurUser(){
        return (User)(getSession().getAttribute(LOGINUSER));
    }
}
