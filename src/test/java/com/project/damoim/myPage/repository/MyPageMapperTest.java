package com.project.damoim.myPage.repository;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;


@SpringBootTest
class MyPageMapperTest {

    @Autowired
    MyPageMapper myPageMapper;

    @Test
    @DisplayName("")
    void myRecruiteCountTest() {
        //given
        String memberId = "jj3713";
        //when
        int i = myPageMapper.myRecruiteCount(memberId);
        //then
        assertEquals(50, i);
    }


}