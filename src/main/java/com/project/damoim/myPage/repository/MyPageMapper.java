package com.project.damoim.myPage.repository;

import com.project.damoim.comment.entity.Comment;
import com.project.damoim.post.entity.Post;
import com.project.damoim.recruit.entity.Recruit;
import com.project.damoim.recruit.entity.RecruitandMember;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MyPageMapper {
    int myRecruiteCount(String memberId);
    int myPostCount(String memberId);
    int myCommentCount(String memberId);
    int myRecruiteAndMember(String memberId);
    List<Recruit> findByIdRecruit(String memberId);

    List<Post> findByIdPost(String memberId);

    List<Comment> findByIdComment(String memberId);

    List<RecruitandMember> findByIdRecruitAndMember(String memberId);

}
