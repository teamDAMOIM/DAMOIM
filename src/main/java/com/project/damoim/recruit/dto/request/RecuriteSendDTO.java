package com.project.damoim.recruit.dto.request;

import lombok.*;

@Setter @Getter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RecuriteSendDTO {
    private int rno;
    private String memberId;
}
