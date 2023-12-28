package com.project.damoim.member.dto.request;


import com.project.damoim.member.entity.Member;
import lombok.*;

@Setter @Getter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class LoginRequestDTO {
    private String id;
    private String pw;
    private boolean autoLogin;


    public Member isEntity(){
        return Member.builder()
                .memberId(this.id)
                .memberPassword(this.pw)
                .build();
    }
}
