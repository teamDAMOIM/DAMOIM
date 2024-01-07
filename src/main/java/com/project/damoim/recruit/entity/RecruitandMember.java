package com.project.damoim.recruit.entity;


import lombok.*;

import java.time.LocalDateTime;

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
    private String recruitTitle;
    private LocalDateTime recruitStartdate;
    private LocalDateTime recruitEnddate;
}
