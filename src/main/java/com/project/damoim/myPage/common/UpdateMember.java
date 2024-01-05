package com.project.damoim.myPage.common;

import lombok.*;

@Setter@Getter@ToString
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@Builder
public class UpdateMember {
    private String type;
    private String memberId;
    private String nickName;
    private String address;
}
