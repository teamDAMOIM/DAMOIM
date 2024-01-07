package com.project.damoim.recruit.entity;


import lombok.*;

@Getter
@Setter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RecruitandMember {
    private String memberId;
    private int recruitNo;
    private int ischeck;

}
