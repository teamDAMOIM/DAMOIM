package com.project.damoim.myPage.dto.response;


import com.project.damoim.Util.date.DateChange;
import com.project.damoim.comment.entity.Comment;
import com.project.damoim.recruit.entity.Recruit;
import lombok.*;

import java.time.LocalDateTime;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MyPageCommentResponseDTO {

    private int cno;
    private int pno;
    private String title;
    private LocalDateTime date;


    public MyPageCommentResponseDTO(Comment c){
        this.cno = c.getCommentNo();
        this.pno = c.getPostNo();
        this.title = c.getCommentContent();
        this.date = c.getCommentDate();
    }
}
