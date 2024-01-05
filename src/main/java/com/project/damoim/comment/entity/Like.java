package com.project.damoim.comment.entity;

import lombok.*;

@Getter@Setter@ToString
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@Builder
public class Like {
    private int commentNo;
    private String memberId;
}
