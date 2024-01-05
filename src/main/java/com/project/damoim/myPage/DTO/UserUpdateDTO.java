package com.project.damoim.myPage.DTO;

import lombok.*;

@Getter@Setter@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserUpdateDTO {
    private String memberId;
    private String nickName;
    private String address;


}
