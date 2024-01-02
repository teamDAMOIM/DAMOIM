package com.project.damoim.recruit.repository;

import com.project.damoim.recruit.entity.Recruit;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RecruitMapper {
    List<Recruit> findAll();
    boolean save(Recruit recruit);
    Recruit findOne(int rno);
}
