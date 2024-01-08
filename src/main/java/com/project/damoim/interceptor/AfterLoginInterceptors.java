package com.project.damoim.interceptor;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Configuration
@Slf4j
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
            log.info("로그인 했을때 로그인창과 회원가입 창 막기");
            response.sendRedirect("/");
            return false;
        }
        return true;
    }
}
