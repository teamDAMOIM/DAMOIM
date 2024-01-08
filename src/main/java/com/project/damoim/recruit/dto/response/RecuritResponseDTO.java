package com.project.damoim.recruit.dto.response;

import com.project.damoim.Util.LoginUtiles;
import com.project.damoim.Util.date.DateChange;
import com.project.damoim.recruit.entity.Category;
import com.project.damoim.recruit.entity.Recruit;
import lombok.*;
import lombok.extern.slf4j.Slf4j;

import javax.servlet.http.HttpSession;
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
    private String category;
//    private LocalDateTime endDate;
    private String endDate;
    private String addrass;
    private int checkCount;
    private int maxCount;
    private String memberId;

    public RecuritResponseDTO(Recruit recruit, HttpSession session){
        this.rno = recruit.getRecruitNo();
        this.title = recruit.getRecruitTitle();
        this.content = recruit.getRecruitContent();
        this.category = recruit.getRecruitCategory();
        this.endDate = DateChange.postDateChang(recruit.getRecruitEnddate());
        this.addrass = recruit.getRecruitAddrass();
        this.checkCount = recruit.getRecruitCount();
        this.maxCount = recruit.getRecruitMax();
        this.memberId = LoginUtiles.LoginUserId(session);
    }

}
