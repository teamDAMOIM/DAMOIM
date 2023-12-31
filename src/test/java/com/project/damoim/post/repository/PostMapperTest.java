package com.project.damoim.post.repository;

import com.project.damoim.post.common.Page;
import com.project.damoim.post.entity.Post;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

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
                    .memberId("grape111")
                    .build();

            boolean save = mapper.save(p);
        }
        //when
        List<Post> all = mapper.findAll();
        //then
        System.out.println("all = " + all);
    }

}