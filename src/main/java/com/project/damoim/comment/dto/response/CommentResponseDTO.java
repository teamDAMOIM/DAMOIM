package com.project.damoim.comment.dto.response;

import com.project.damoim.comment.entity.Comment;
import lombok.*;

import java.util.List;


@Setter @Getter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CommentResponseDTO {
    private int maxCount;
    private List<Comment> commentList;
}
