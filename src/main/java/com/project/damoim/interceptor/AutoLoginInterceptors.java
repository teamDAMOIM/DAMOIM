package com.project.damoim.interceptor;

import com.project.damoim.member.entity.Member;
import com.project.damoim.member.repository.MemberMapper;
import com.project.damoim.member.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalDateTime;


/*
    이 클래스는 브라우저에 들어오자마자 오토로그인 확인
 */
@Configuration
@RequiredArgsConstructor
public class AutoLoginInterceptors implements HandlerInterceptor {
    private final MemberMapper mapper;
    private final MemberService service;
    @Override
    public boolean preHandle(
            HttpServletRequest request,
            HttpServletResponse response,
            Object handler) throws Exception {

        Cookie auto = WebUtils.getCookie(request, "auto");

        if (auto!=null){
            String value = auto.getValue();
            Member member = mapper.findMemberByCookie(value);

            if (member != null && LocalDateTime.now().isBefore(member.getAutoDate())){
                service.LoginState(request.getSession(), member.getMemberId());
            }
        }

        return true;
    }
}
