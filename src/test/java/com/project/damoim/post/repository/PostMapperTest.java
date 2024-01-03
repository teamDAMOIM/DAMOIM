package com.project.damoim.post.repository;

import com.project.damoim.post.entity.Post;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class PostMapperTest {

    @Autowired
    PostMapper mapper;

    @Test
    @DisplayName("게시물 300개 저장하기")
    void bulkInsertTest() {
        //given
        for (int i = 1; i <= 300; i++) {
            Post p = Post.builder()
                    .postTitle("이ㅏㅏ" + i)
                    .postContent("이이이" + i)
                    .postViewCount(0)
                    .memberId("shubom0115")
                    .build();

            boolean save = mapper.save(p);
        }
        //when
        //then
    }


    @Test
    @DisplayName("jj3713회원에 게시물을 확인하면 게시물이 2개 나와야 한다")
    void findByLoginUserPostTest() {
        //given
        String id = "jj3713";
        //when
        List<Post> pList = mapper.findByLoginUserPost(id);
        //then
        System.out.println("pList = " + pList);
    }


}