package com.project.damoim.recruit.repository;

import com.project.damoim.post.common.Search;
import com.project.damoim.recruit.common.RecruitSearch;
import com.project.damoim.recruit.entity.Recruit;
import com.project.damoim.recruit.entity.RecruitandMember;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RecruitMapper {


    List<Recruit> find();
    // 모집 게시판 검색 조회
    List<Recruit> findAll(String type, String keyword);
    // 메인창에 정렬 할 모집 게시물
    List<Recruit> findSortRecruit(String address);
    // 게시물 저장
    boolean save(Recruit recruit);
    //디테일 정보 조회
    Recruit findOne(int rno);

    // 신청 버튼 누르면 올라가는 값
    void upCount(int rno);
    // tb_member_Recruite insert 기능
    boolean upPerson(int rno, String memberId);
    // 중복 여부 체크
    boolean check(int rno, String memberId);

    boolean deleteRecurite(int rno, String memberId);

    // 다운 카운트
    void downCount(int rno);

    List<RecruitandMember> selectCheckCount(int rno, String memberId);


}
