package com.project.damoim.post.repository;

import com.project.damoim.post.common.Page;
import com.project.damoim.post.entity.Post;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PostMapper {
    // 목록 조회
    List<Post> findAll(Page page);

    // 조회수 정렬 처리
    List<Post> postSort();

    // 상세 조회
    Post findOne(int postNo);

    // 로그인한 회원이 올린 포스터 확인
    List<Post> findByLoginUserPost(String memberId);

    // 게시물 등록
    boolean save(Post post);

    // 게시물 삭제
    boolean deleteByNo(int postNo);

    // 조회수 상승
    void updateViewCount(int postNo);

    // 총 게시물 수 구하기
    int postMaxCount();
}
