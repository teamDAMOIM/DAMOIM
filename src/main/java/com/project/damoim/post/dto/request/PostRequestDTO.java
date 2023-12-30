package com.project.damoim.post.dto.request;


import com.project.damoim.post.entity.Post;
import lombok.*;

@Setter @Getter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PostRequestDTO {
    private String title;
    private String content;

    public Post isEntity(){
        return Post.builder()
                .postTitle(this.title)
                .postContent(this.content)
                .build();
    }

}
