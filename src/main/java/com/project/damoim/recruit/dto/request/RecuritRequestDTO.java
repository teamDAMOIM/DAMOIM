package com.project.damoim.recruit.dto.request;


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
public class RecuritRequestDTO {
    private String category;
    private String title;
    private String content;
    private int maxNumCount;
    private String endDate;



    public Recruit isEntity(){

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd,HH:mm");
        return Recruit.builder()
                .recruitCategory(this.category)
                .recruitTitle(this.title)
                .recruitContent(this.content)
                .recruitMax(this.maxNumCount)
                .recruitEnddate(LocalDateTime.parse(this.endDate, formatter))
                .build();
    }
}
