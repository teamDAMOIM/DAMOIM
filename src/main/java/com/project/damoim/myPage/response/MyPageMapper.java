package com.project.damoim.myPage.response;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MyPageMapper {
    int myRecruiteCount(String memberId);
    int myPostCount(String memberId);
    int myCommentCount(String memberId);
}
