package com.project.damoim.member.dto.response;


import lombok.*;

@Setter @Getter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class LoginSessionDTO {
    private String id;
    private String name;
    private String nickName;
    private String address;
}
