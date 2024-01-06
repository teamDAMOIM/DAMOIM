package com.project.damoim.myPage.service;


import com.project.damoim.Util.LoginUtiles;
import com.project.damoim.myPage.response.MyPageMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

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
}
