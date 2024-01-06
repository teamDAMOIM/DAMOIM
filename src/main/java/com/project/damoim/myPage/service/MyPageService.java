package com.project.damoim.myPage.service;


import com.project.damoim.Util.LoginUtiles;
import com.project.damoim.myPage.DTO.response.MyPageCommentResponseDTO;
import com.project.damoim.myPage.DTO.response.MyPagePostResponseDTO;
import com.project.damoim.myPage.DTO.response.MyPageRecruitResopseDTO;
import com.project.damoim.myPage.repository.MyPageMapper;
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

    public List<MyPageRecruitResopseDTO> getRecruitList(HttpSession session){
        String loginUserId = LoginUtiles.LoginUserId(session);

        return mapper.findByIdRecruit(loginUserId).stream()
                .map(recruit -> new MyPageRecruitResopseDTO(recruit))
                .collect(Collectors.toList())
                ;
    }

    public List<MyPageCommentResponseDTO> getCommentList(HttpSession session){
        String loginUserId = LoginUtiles.LoginUserId(session);


        return mapper.findByIdComment(loginUserId).stream()
                .map(comment -> new MyPageCommentResponseDTO(comment))
                .collect(Collectors.toList())
                ;
    }

    public List<MyPagePostResponseDTO> getPostList(HttpSession session){
        String loginUserId = LoginUtiles.LoginUserId(session);


        return mapper.findByIdPost(loginUserId).stream()
                .map(post -> new MyPagePostResponseDTO(post))
                .collect(Collectors.toList())
                ;
    }
}
