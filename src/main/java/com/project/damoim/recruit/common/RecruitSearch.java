package com.project.damoim.recruit.common;

import com.project.damoim.recruit.entity.Category;
import lombok.*;


@Setter @Getter @ToString
@EqualsAndHashCode
@AllArgsConstructor
@Builder
public class RecruitSearch {
    private String  type;
    private String keyword;

    public RecruitSearch(){
        type = "";
        keyword = "";
    }
}
