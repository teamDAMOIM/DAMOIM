package com.project.damoim.config;


import com.project.damoim.interceptor.AfterLoginInterceptors;
import com.project.damoim.interceptor.AutoLoginInterceptors;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@RequiredArgsConstructor
public class IntercepterConfig implements WebMvcConfigurer {

    private final AfterLoginInterceptors afterLoginInterceptors;
    private final AutoLoginInterceptors autoLoginInterceptors;
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry
                .addInterceptor(afterLoginInterceptors)
                .addPathPatterns("/members/sign-in", "/members/sign-up")
                ;

        registry
                .addInterceptor(autoLoginInterceptors)
                .addPathPatterns("/**")
                ;
    }
}
