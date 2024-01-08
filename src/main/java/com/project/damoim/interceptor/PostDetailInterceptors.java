package com.project.damoim.interceptor;

import com.project.damoim.Util.LoginUtiles;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Configuration
@Slf4j
public class PostDetailInterceptors implements HandlerInterceptor {

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
