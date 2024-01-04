package com.project.damoim.comment.repository;

import com.project.damoim.comment.entity.Comment;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class CommentMapperTest {
    @Autowired
    CommentMapper mapper;


    @Test
    @DisplayName("포스트 4번을 조회")
    void findCommentTest() {
        //given
        int pno = 4;
        //when
        List<Comment> comment = mapper.findComment(pno, 0);
        //then
        System.out.println(comment);
    }

    @Test
    @DisplayName("")
    void commnetMaxCountTest() {
        //given
        int pno = 4;
        //when
        int count = mapper.commentMaxCount(pno);
        //then
        System.out.println(count);
    }




}