package com.project.damoim.myPage.response;

import com.project.damoim.recruit.entity.Recruit;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MyPageMapper {
    int myRecruiteCount(String memberId);
    int myPostCount(String memberId);
    int myCommentCount(String memberId);
    List<Recruit> findByIdRecruit(String memberId);

}
