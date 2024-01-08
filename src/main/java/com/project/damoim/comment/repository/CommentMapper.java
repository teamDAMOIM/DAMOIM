package com.project.damoim.comment.repository;

import com.project.damoim.comment.entity.Comment;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CommentMapper {

    // 포스트 번호에 맞춰 댓글 찾기
    List<Comment> findComment(int pno, int amount, String sort);

    Comment findOne(int cno);
    // 댓글 등록
    boolean save(Comment comment);
    // 댓글 갯수 확인
    int commentMaxCount(int pno);

    // 단순 좋아요 카운트 업
    void upLikeCount(int cno);

    // 좋아요 누른 회원 아이디를 디비에 저장
    boolean upLikeMember(int cno, String memberId);

    // 테이블에 회원이 있으면 1조회 0조회
    boolean upLikeCheck(String memberId, int cno);

    void minusCount(int cno);

    boolean deleteLikeMember(int cno, String memberId);
}
