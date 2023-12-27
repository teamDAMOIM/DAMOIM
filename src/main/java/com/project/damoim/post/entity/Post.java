package com.project.damoim.post.entity;

import com.project.damoim.member.entity.Member;
import lombok.*;

import java.time.LocalDateTime;

@Setter@Getter@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Post {

    private int postNo; // 게시물 번호
    private String postTitle; // 게시물 제목
    private String postContent; // 게시물 본문
    private int postViewcount; // 게시물 조회수
    private LocalDateTime postDate; // 게시물 작성일자시간
    private Member memberId; // 회원 아이디
    private String memberAddress; // 회원 주소

}
