package com.project.damoim.member.entity;

import lombok.*;

@Setter@Getter@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Member {

    private String memberId; // 회원아이디
    private String memberPassword; // 회원비밀번호
    private String memberName; // 회원이름
    private int memberPhone; // 회원 핸드폰번호
    private String memberNickname; // 회원 닉네임
    private String memberEmail; // 회원 이메일

}
