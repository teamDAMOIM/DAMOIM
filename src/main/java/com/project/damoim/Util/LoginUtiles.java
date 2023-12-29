package com.project.damoim.Util;


import com.project.damoim.member.dto.request.AutoLoginDTO;
import com.project.damoim.member.dto.request.LoginRequestDTO;
import com.project.damoim.member.dto.response.LoginSessionDTO;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Configuration
public class LoginUtiles {
    public static final String AutoLogin = "auto";

    public static boolean isAutoLogin(HttpServletRequest request){
        return WebUtils.getCookie(request, AutoLogin) != null;
    }

    public static String LoginUserId (HttpSession session){
        LoginSessionDTO loginId = (LoginSessionDTO) session.getAttribute("login");
        return loginId.getId();
    }
}
