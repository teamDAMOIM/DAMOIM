package com.project.damoim.comment.dto.response;


import com.project.damoim.comment.entity.Comment;
import lombok.*;

@Setter @Getter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CommentLikeResponseDTO {
    private int likeCont;
}
