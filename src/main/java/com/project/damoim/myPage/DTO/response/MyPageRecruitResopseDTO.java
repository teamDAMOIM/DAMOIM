package com.project.damoim.myPage.dto.response;

import com.project.damoim.recruit.entity.Recruit;
import lombok.*;

import java.time.LocalDateTime;


@Setter @Getter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MyPageRecruitResopseDTO {
    private int rno;
    private String title;
    private LocalDateTime startDate;
    private LocalDateTime endDate;


    public MyPageRecruitResopseDTO(Recruit r){
        this.rno = r.getRecruitNo();
        this.title = r.getRecruitTitle();
        this.startDate = r.getRecruitStartdate();
        this.endDate = r.getRecruitEnddate();
    }

}
