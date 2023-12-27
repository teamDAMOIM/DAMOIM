package com.project.damoim.member.dto.request;

import com.project.damoim.member.entity.Member;
import lombok.*;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Setter @Getter @ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SignUpRequestDTO {

    @NotBlank
    @Size(min = 4, max = 14)
    private String id;
    @NotBlank
    @Size(min = 8) // 비밀번호 8글자 이상 만들기
    private String pw;
    @NotBlank
    @Size(min = 2, max = 6)
    private String un;
    @NotBlank
    private String nn;
    @NotBlank
    private String ph;
    @NotBlank
    private String ad;


    public Member isEntity(){
        Member.builder()
                .memberId(this.id)
                .memberPassword(this.pw)
                .memberName(this.un)
                .memberPhone(this.nn)
                .memberAddress(ad)
                .build();
    }
}
