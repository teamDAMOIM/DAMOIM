package com.project.damoim.recruit.dto.response;

import com.project.damoim.Util.date.DateChange;
import com.project.damoim.recruit.entity.Category;
import com.project.damoim.recruit.entity.Recruit;
import lombok.*;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Setter @Getter @ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class RecuriitDetileResponseDTO {
    private int rno;
    private String title;
    private String content;
    private String category;
    private String startDate;
    private String endDate;
    private String address;
    private int count;
    private int max;
    private String memberId;
    private boolean b;

    public RecuriitDetileResponseDTO(Recruit r) {
        this.rno = r.getRecruitNo();
        this.title = r.getRecruitTitle();
        this.content = r.getRecruitContent();
        this.category = r.getRecruitCategory();
        this.startDate = DateChange.postDateChang(r.getRecruitStartdate());
        this.endDate = DateChange.postDateChang(r.getRecruitEnddate());
        this.address = r.getRecruitAddrass();
        this.count = r.getRecruitCount();
        this.max = r.getRecruitMax();
        this.memberId = r.getMemberId();
    }

}
