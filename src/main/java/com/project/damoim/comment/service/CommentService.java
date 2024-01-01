package com.project.damoim.comment.service;


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

    public List<Comment> findComment(int pno){
        return mapper.findComment(pno).stream()
                .collect(Collectors.toList())
                ;
    }
}
