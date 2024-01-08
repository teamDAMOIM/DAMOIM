package com.project.damoim.comment.entity;

import com.project.damoim.member.entity.Member;
import com.project.damoim.post.entity.Post;
import lombok.*;

import java.time.LocalDateTime;

@Getter@Setter@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Comment {

    private int commentNo; // 댓글 번호
    private String commentContent; // 댓글 내용
    private LocalDateTime commentDate; // 댓글 작성일자시간
    private String commentUsername; // 작성자 아이디
    private String memberId; // 회원 아이디
    private int postNo; // 게시물 번호
    private int likeCount;



}
