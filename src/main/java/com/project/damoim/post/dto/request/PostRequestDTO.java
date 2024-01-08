package com.project.damoim.post.dto.request;


import com.project.damoim.Util.LoginUtiles;
import com.project.damoim.post.entity.Post;
import lombok.*;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

@Setter @Getter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PostRequestDTO {
    private String title;
    private String content;

    public Post isEntity(HttpSession session){
        return Post.builder()
                .postTitle(this.title)
                .postContent(this.content)
                .memberId(LoginUtiles.LoginUserId(session))
                .build();
    }

}
