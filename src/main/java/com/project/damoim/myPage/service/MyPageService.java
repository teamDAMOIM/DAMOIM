package com.project.damoim.myPage.service;


import com.project.damoim.Util.LoginUtiles;
import com.project.damoim.myPage.dto.response.MyPageResopseDTO;
import com.project.damoim.myPage.response.MyPageMapper;
import com.project.damoim.recruit.dto.response.RecuritResponseDTO;
import com.project.damoim.recruit.entity.Recruit;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class MyPageService {
    private final MyPageMapper mapper;

    public int recruitCount(HttpSession session){
        return mapper.myRecruiteCount(LoginUtiles.LoginUserId(session));
    }
    public int postCount(HttpSession session){
        return mapper.myPostCount(LoginUtiles.LoginUserId(session));
    }
    public int commentCount(HttpSession session){
        return mapper.myCommentCount(LoginUtiles.LoginUserId(session));
    }

    public List<MyPageResopseDTO> getRecruitList(HttpSession session){
        String loginUserId = LoginUtiles.LoginUserId(session);
        return mapper.findByIdRecruit(loginUserId).stream()
                .map(recruit -> new MyPageResopseDTO(recruit))
                .collect(Collectors.toList())
                ;
    }
}
