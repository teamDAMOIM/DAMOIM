package com.project.damoim.post.service;

import com.project.damoim.post.entity.Post;
import com.project.damoim.post.repository.PostMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class PostService {

    private final PostMapper mapper;

    public List<Post> getPostList(){
        return mapper.findAll().stream()
                .collect(Collectors.toList())
                ;
    }


    // 게시물 하나 보여줘
    public Post getPost(int pno){
        return mapper.findOne(pno);
    }

}
