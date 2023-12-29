package com.project.damoim.interceptor;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Configuration
public class AfterLoginInterceptors implements HandlerInterceptor {
    @Override
    public boolean preHandle(
            HttpServletRequest request,
            HttpServletResponse response,
            Object handler) throws Exception {
        HttpSession session = request.getSession();

        /*
            로그인
            return false : 나가
            return true : 들어가 !~
         */
        if (session.getAttribute("login") != null){
            response.sendRedirect("/");
            return false;
        }
        return true;
    }
}
