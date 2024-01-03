package com.project.damoim.comment.repository;

import com.project.damoim.comment.entity.Comment;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CommentMapper {

    // 포스트 번호에 맞춰 댓글 찾기
    List<Comment> findComment(int pno, int amount);


    // 댓글 등록
    boolean save(Comment comment);

    // 댓글 갯수 확인
    int commentMaxCount(int pno);
}
