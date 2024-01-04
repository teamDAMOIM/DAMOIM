package com.project.damoim.comment.dto.request;


import lombok.*;

@Setter @Getter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UpLikeRequestDTO {
    private int commentNo;
    private String memberId;
}
