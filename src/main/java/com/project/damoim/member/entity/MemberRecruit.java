package com.project.damoim.member.entity;

import com.project.damoim.recruit.entity.Recruit;
import lombok.*;

@Getter@Setter@ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class MemberRecruit {

    private Member memberNo; // 회원 번호
    private Recruit recruitNo; // 모집 게시물 번호

}
