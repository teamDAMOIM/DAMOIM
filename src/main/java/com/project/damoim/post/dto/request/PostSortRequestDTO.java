package com.project.damoim.post.dto.request;

import com.project.damoim.post.entity.Post;
import lombok.*;


@Setter @Getter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PostSortRequestDTO {
    int pno;
    String title;
    int viewCount;

    public PostSortRequestDTO(Post post) {
        this.pno = post.getPostNo();
        this.title = post.getPostTitle();
        this.viewCount = post.getPostViewCount();
    }
}
