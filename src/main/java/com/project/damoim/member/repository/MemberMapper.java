package com.project.damoim.member.repository;

import com.project.damoim.member.dto.request.AutoLoginDTO;
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
    // type : email, id
    // keyword : 중복 값 체크
    boolean isDuplicate(String type, String keyword);

    void madeSessionAutoLogin(AutoLoginDTO dto);

    //세션 아이디 쿠기
    Member findMemberByCookie(String sessionId);

}
