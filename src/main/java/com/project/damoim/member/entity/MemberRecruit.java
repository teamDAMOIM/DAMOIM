package com.project.damoim.member.entity;

import com.project.damoim.recruit.entity.Recruit;
import lombok.*;

import java.time.LocalDateTime;

@Getter@Setter@ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class MemberRecruit {

    private Member memberNo; // 회원 번호
    private Recruit recruitNo; // 모집 게시물 번호
    private String recruitTitle;
    private LocalDateTime recruitStartdate;
    private LocalDateTime recruitEnddate;

}
