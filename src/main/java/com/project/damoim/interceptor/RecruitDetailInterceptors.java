package com.project.damoim.interceptor;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Configuration
public class RecruitDetailInterceptors implements HandlerInterceptor {

    @Override
    public boolean preHandle(
            HttpServletRequest request,
            HttpServletResponse response,
        Object handler) throws Exception {

        HttpSession session = request.getSession();


        if (session.getAttribute("login") == null) {
            response.sendRedirect("/members/sign-in");
            return false;
        }

        return true;
    }
}
