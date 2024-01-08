package com.project.damoim.post.dto.request;


import com.project.damoim.Util.date.DateChange;
import com.project.damoim.post.common.Search;
import com.project.damoim.post.dto.response.PostResponseDTO;
import com.project.damoim.post.entity.Post;
import lombok.*;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Setter @Getter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PostListRequestDTO {
    private int pno;
    private String title;
    private String name;
    private String date;
    private int view;

    public PostListRequestDTO(Post post) {
        this.pno = post.getPostNo();
        this.title = post.getPostTitle();
        this.name = post.getMemberId();
        this.date = DateChange.postDateChang(post.getPostDate());
        this.view = post.getPostViewCount();
    }
}
