package com.project.damoim.myPage.DTO;

import lombok.*;

import javax.validation.constraints.NotBlank;

@Getter@Setter@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserUpdateDTO {
    private String memberId;
    @NotBlank
    private String nickName;
    @NotBlank
    private String address;


}
