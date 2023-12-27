package com.project.damoim.member.repository;

import com.project.damoim.member.entity.Member;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
@Transactional
@Rollback
class MemberMapperTest {
    @Autowired
    MemberMapper memberMapper;

    @Test
    @DisplayName("멤버 한명을 등록하면 정보 조회하게")
    void saveTest() {
        //given
        Member m = new Member("12", "12", "ㄴㅇ", "12", "12", "공주");
        boolean save = memberMapper.save(m);
        //then
        assertTrue(save);
    }
    @Test
    @DisplayName("id 12를 조회하면 그 사람의 비밀번호는 12이어야 한다")
    void findOneTest() {
        //given
        String id = "12";
        //when
        Member member = memberMapper.findOne(id);
        //then
        assertEquals("12", member.getMemberPassword());
    }

    @Test
    @DisplayName("id 12를 삭제하면 삭제되어야 한다.")
    void deleteTest() {
        //given
        String id = "12";
        //when
        boolean delete = memberMapper.delete(id);
        //then
        assertTrue(delete);
    }
}