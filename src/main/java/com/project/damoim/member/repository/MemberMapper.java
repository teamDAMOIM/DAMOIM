package com.project.damoim.member.repository;

import com.project.damoim.member.entity.Member;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

    // 회원가입
    boolean save (Member member);

    // 단일 조회
    Member findOne(String memberId);
}
