package com.project.damoim.recruit.dto.response;

import com.project.damoim.recruit.entity.Recruit;
import com.project.damoim.recruit.entity.RecruitandMember;
import lombok.*;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RecrioteRespondeSendDTO {
    private boolean b;
    private RecruitandMember recruit;
}
