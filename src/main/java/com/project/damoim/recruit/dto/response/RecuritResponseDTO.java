package com.project.damoim.recruit.dto.response;

import com.project.damoim.Util.date.DateChange;
import com.project.damoim.recruit.entity.Category;
import com.project.damoim.recruit.entity.Recruit;
import lombok.*;
import lombok.extern.slf4j.Slf4j;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Slf4j
@Setter@Getter@ToString
@AllArgsConstructor
@EqualsAndHashCode
@NoArgsConstructor
@Builder
public class RecuritResponseDTO {

    private int rno;
    private String title;
    private String content;
    private Category category;
    private int count;
//    private LocalDateTime endDate;
    private String endDate;
    private String addrass;
    private int maxCount;

    public RecuritResponseDTO(Recruit recruit){
        this.rno = recruit.getRecruitNo();
        this.title = recruit.getRecruitTitle();
        this.content = recruit.getRecruitContent();
        this.category = recruit.getRecruitCategory();
        this.count = recruit.getRecruitCount();
//        this.endDate = recruit.getRecruitEnddate();
        this.endDate = makePrettierDateString(recruit.getRecruitEnddate());
        this.addrass = recruit.getRecruitAddress();
        this.maxCount = recruit.getRecruitMax();
    }

    static String makePrettierDateString(LocalDateTime endDate) {
        DateTimeFormatter pattern = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
        return pattern.format(endDate);
    }

}
