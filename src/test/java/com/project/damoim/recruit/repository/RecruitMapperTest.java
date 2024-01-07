package com.project.damoim.recruit.repository;

import com.project.damoim.recruit.entity.Category;
import com.project.damoim.recruit.entity.Recruit;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class RecruitMapperTest {

    @Autowired
    RecruitMapper recruitMapper;



    @Test
    @DisplayName("전체조회")
    void findAllTest() {
        //given

        //when

        //then
    }

    @Test
    @DisplayName("단일 조회")
    void findOneTest() {
        //given
        int e = 2;
        //when
        Recruit one = recruitMapper.findOne(e);
        //then
        assertEquals("www", one.getRecruitTitle());
    }


    @Test
    @DisplayName("")
    void findSortRecruitTest() {
        //given
        String address = "청양";
        //when
        List<Recruit> sortRecruit = recruitMapper.findSortRecruit(address);
        //then
        System.out.println("sortRecruit = " + sortRecruit);
    }


    @Test
    @DisplayName("")
    void selectCheckCountTest() {
        //given
        String id = "jj3713";
        int pno = 10;
        //when

        //then
    }

}