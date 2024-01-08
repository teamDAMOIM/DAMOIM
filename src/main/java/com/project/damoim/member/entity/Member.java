package com.project.damoim.member.entity;

import lombok.*;

import java.time.LocalDateTime;

@Setter @Getter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Member {

    private String memberId; // 회원아이디
    private String memberPassword; // 회원비밀번호
    private String memberName; // 회원이름
    private String memberPhone; // 회원 핸드폰번호
    private String memberNickname; // 회원 닉네임
    private String memberAddress; // 회원 주소
    private String sessionId; // 세션 아이디 값
    private LocalDateTime autoDate;
    private String profileImage;
}
