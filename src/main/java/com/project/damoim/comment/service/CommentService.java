package com.project.damoim.comment.service;


import com.project.damoim.Util.LoginUtiles;
import com.project.damoim.comment.dto.request.CommentRequestDTO;
import com.project.damoim.comment.dto.response.CommentAllResponseDTO;
import com.project.damoim.comment.dto.response.CommentResponseDTO;
import com.project.damoim.comment.entity.Comment;
import com.project.damoim.comment.repository.CommentMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class CommentService {
    private final CommentMapper mapper;

    public CommentResponseDTO findComment(int pno, int amount, String sort){
        List<CommentAllResponseDTO> commentList = mapper.findComment(pno, amount, sort)
                .stream()
                .map(comment -> new CommentAllResponseDTO(comment))
                .collect(Collectors.toList());


        // 댓글 전체 조회
        int endCount = mapper.commentMaxCount(pno);

        return CommentResponseDTO.builder()
                .maxCount(endCount)
                .commentList(commentList)
                .build();
    }

    public boolean saveComment(CommentRequestDTO dto) {
        return mapper.save(dto.isEntity());
    }

    private void upLikeCount(int rno){
        mapper.upLikeCount(rno);
    }

    public Comment getComment(int cno){
        return mapper.findOne(cno);
    }

    public boolean checkLike(int cno, HttpSession session){
        // 좋아요 버튼을 누르면 좋아요 테이블에 좋아요 버튼 누른 회원을 저장하는 처리

        boolean flag = mapper.upLikeCheck(LoginUtiles.LoginUserId(session), cno);


        if (!flag){
            mapper.upLikeMember(cno, LoginUtiles.LoginUserId(session));
            upLikeCount(cno);
            return true;
        } else{
            mapper.deleteLikeMember(cno, LoginUtiles.LoginUserId(session));
            mapper.minusCount(cno);
            return false;
        }
    }
}
