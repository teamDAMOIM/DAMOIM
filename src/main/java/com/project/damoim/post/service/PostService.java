package com.project.damoim.post.service;

import com.project.damoim.Util.LoginUtiles;
import com.project.damoim.Util.date.DateChange;
import com.project.damoim.post.common.Page;
import com.project.damoim.post.common.Search;
import com.project.damoim.post.dto.request.PostListRequestDTO;
import com.project.damoim.post.dto.request.PostRequestDTO;
import com.project.damoim.post.dto.request.PostSortRequestDTO;
import com.project.damoim.post.dto.response.PostResponseDTO;
import com.project.damoim.post.entity.Post;
import com.project.damoim.post.repository.PostMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class PostService {

    private final PostMapper mapper;

    public List<PostListRequestDTO> getPostList(Search page){
        return mapper.findAll(page).stream()
                .map(post -> new PostListRequestDTO(post))
                .collect(Collectors.toList())
                ;
    }

    public List<PostSortRequestDTO> getSortPostList(){
        return mapper.postSort().stream()
                .map(post -> new PostSortRequestDTO(post))
                .collect(Collectors.toList())
                ;
    }

    // 로그인한 사람 게시물 보여줘
    public List<Post> getLoginPost(HttpSession session){

        String loginUserId = LoginUtiles.LoginUserId(session);

        return mapper.findByLoginUserPost(loginUserId);
    }

    // 게시물 하나 보여줘
    public PostResponseDTO getPost(int pno){
        Post p = mapper.findOne(pno);

        return PostResponseDTO.builder()
                .pno(p.getPostNo())
                .title(p.getPostTitle())
                .content(p.getPostContent())
                .date(DateChange.postDateChang(p.getPostDate()))
                .mid(p.getMemberId())
                .build();


    }

    // 게시물 상세보기로 들어오면 조회수 처리
    public void upViewCount(int pno){
        mapper.updateViewCount(pno);
    }

    // 게시물 저장 처리
    public void savePost(PostRequestDTO dto, HttpSession session){
        Post post = dto.isEntity(session);
        mapper.save(post);
    }

    public int totalPostCount(Search search){
        return mapper.postMaxCount(search);
    }

}
