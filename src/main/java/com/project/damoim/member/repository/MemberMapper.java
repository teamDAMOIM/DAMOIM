package com.project.damoim.member.repository;

import com.project.damoim.member.entity.Member;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

    // 회원가입
    boolean save (Member member);

    // 회원 탙퇴
    boolean delete(String memberId);

    // 단일 조회
    Member findOne(String memberId);

    // 중복 체크 만들 예정

}
