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
    @Transactional
    @Rollback
    void saveTest() {
        //given
       Recruit r = Recruit.builder()
                .recruitTitle("www")
                .recruitContent("asdasd")
                .recruitEnddate(LocalDateTime.now().plusDays(30))
               .recruitCategory(Category.HEALTH)
                .recruitAddress("공주")
                .recruitMax(10)
                .build();
        //when
        recruitMapper.save(r);
        //then
    }

    @Test
    @DisplayName("전체조회")
    void findAllTest() {
        //given

        //when
        List<Recruit> all = recruitMapper.findAll();
        //then
        System.out.println("recruitMapper = " + all);
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
}