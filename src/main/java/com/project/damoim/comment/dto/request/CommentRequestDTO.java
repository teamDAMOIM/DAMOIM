package com.project.damoim.comment.dto.request;


import com.project.damoim.comment.entity.Comment;
import lombok.*;

import javax.servlet.http.HttpSession;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

@Setter @Getter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CommentRequestDTO {
    @Pattern(regexp = "^(?!.*씨발).*$")
    @NotBlank
    private String comment;
    @NotBlank
    private String username;
    private int pno;
    @NotBlank
    private String memberId;

    public Comment isEntity(){
        return Comment.builder()
                .commentContent(this.comment)
                .commentUsername(this.username)
                .postNo(this.pno)
                .memberId(this.memberId)
                .build()
                ;
    }
}
