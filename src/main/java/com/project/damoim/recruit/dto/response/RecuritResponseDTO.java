package com.project.damoim.recruit.dto.response;

import com.project.damoim.Util.date.DateChange;
import com.project.damoim.recruit.entity.Category;
import com.project.damoim.recruit.entity.Recruit;
import lombok.*;
import lombok.extern.slf4j.Slf4j;

import java.time.LocalDateTime;

@Slf4j
@Setter@Getter@ToString
@AllArgsConstructor
@EqualsAndHashCode
@NoArgsConstructor
@Builder
public class RecuritResponseDTO {

    private String title;
    private String content;
    private Category category;
    private LocalDateTime endDate;
    private String addrass;
    private int maxCount;

    public RecuritResponseDTO(Recruit recruit){
        this.title = recruit.getRecruitTitle();
        this.content = recruit.getRecruitContent();
        this.category = recruit.getRecruitCategory();
        this.endDate = recruit.getRecruitEnddate();
        this.addrass = recruit.getRecruitAddress();
        this.maxCount = recruit.getRecruitMax();
    }

}
