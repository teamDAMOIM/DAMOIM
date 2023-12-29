package com.project.damoim.member.service;

import com.project.damoim.member.dto.request.LoginRequestDTO;
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
class MemberServiceTest {
    @Autowired
    MemberService service;
    @Test
    @DisplayName("회원 조회")
    void autest() {
        //given
        LoginRequestDTO dto = LoginRequestDTO.builder()
                .id("oyg1234")
                .pw("zkxm2421")
                .build();
        //when
        LoginResult authenticate = service.authenticate(dto, null, null);

        //then
        assertEquals(LoginResult.SUCCESS, authenticate);
    }
}