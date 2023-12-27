package com.project.damoim.member.dto.request;

import com.project.damoim.member.entity.Member;
import lombok.*;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.beans.Encoder;

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


    public Member isEntity(PasswordEncoder encoder){
        return Member.builder()
                .memberId(this.id)
                .memberPassword(encoder.encode(this.pw))
                .memberName(this.un)
                .memberPhone(this.ph)
                .memberNickname(this.nn)
                .memberAddress(ad)
                .build();
    }
}
