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
    @DisplayName("")
    void saveTest() {
        //given
        Recruit r = Recruit.builder()
                .recruitTitle("zzzzz")
                .recruitContent("zzzzz")
                .recruitEnddate(LocalDateTime.now().plusDays(30))
                .recruitCategory(Category.STUDY)
                .recruitAddress("공주")
                .recruitCount(1)
                .recruitMax(10)
                .memberId("jj3713")
                .build();
        for (int i = 0; i < 10; i++) {
            recruitMapper.save(r);
        }
        //when

        //then
    }

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
    @DisplayName("asdf")
    void upViewTest() {
        //given
        int rno = 1;
        //when
        recruitMapper.viewUpCount(rno);
        //then
    }

}