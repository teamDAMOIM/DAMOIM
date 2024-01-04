package com.project.damoim.comment.service;


import com.project.damoim.comment.dto.request.CommentRequestDTO;
import com.project.damoim.comment.dto.response.CommentResponseDTO;
import com.project.damoim.comment.entity.Comment;
import com.project.damoim.comment.repository.CommentMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class CommentService {
    private final CommentMapper mapper;

    public CommentResponseDTO findComment(int pno, int amount){
        List<Comment> commentList = mapper.findComment(pno, amount).stream()
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

    public void upLikeCount(int rno){
        mapper.upLikeCount(rno);
    }
}
