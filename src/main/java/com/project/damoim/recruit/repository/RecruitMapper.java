package com.project.damoim.recruit.repository;

import com.project.damoim.recruit.entity.Recruit;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RecruitMapper {

    // 모집 게시판 전체 조회
    List<Recruit> findAll();
    // 메인창에 정렬 할 모집 게시물
    List<Recruit> findSortRecruit();
    // 게시물 저장
    boolean save(Recruit recruit);
    //디테일 정보 조회
    Recruit findOne(int rno);

    void viewUpCount(int rno);
}
