package com.project.damoim.comment.dto.response;

import com.project.damoim.Util.date.DateChange;
import com.project.damoim.comment.entity.Comment;
import lombok.*;

import java.time.LocalDateTime;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CommentAllResponseDTO {
    private int commentNo; // 댓글 번호
    private String commentContent; // 댓글 내용
    private String commentDate; // 댓글 작성일자시간
    private String commentUsername; // 작성자 아이디
    private int postNo; // 게시물 번호
    private int likeCount;

    public CommentAllResponseDTO(Comment c){
        this.commentNo = c.getCommentNo();
        this.commentContent = c.getCommentContent();
        this.commentDate = DateChange.postDateChang(c.getCommentDate());
        this.commentUsername = c.getCommentUsername();
        this.postNo = c.getPostNo();
        this.likeCount = c.getLikeCount();
    }

}
