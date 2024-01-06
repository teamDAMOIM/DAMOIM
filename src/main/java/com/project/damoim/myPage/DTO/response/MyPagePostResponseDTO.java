package com.project.damoim.myPage.dto.response;

import com.project.damoim.Util.date.DateChange;
import com.project.damoim.post.entity.Post;
import lombok.*;

import java.time.LocalDateTime;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MyPagePostResponseDTO {
    private int pno;
    private String title;
    private LocalDateTime date;

    public MyPagePostResponseDTO(Post p){
        this.pno = p.getPostNo();
        this.title = p.getPostTitle();
        this.date = p.getPostDate();
    }
}
