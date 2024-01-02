package com.project.damoim.recruit.dto.request;


import com.project.damoim.recruit.entity.Recruit;
import lombok.*;

@Setter @Getter @ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class RecuritRequestDTO {
    private String title;
    private String content;


    public Recruit isEntity(){
        return Recruit.builder()
                .recruitTitle(this.title)
                .recruitContent(this.content)
                .build();
    }
}
