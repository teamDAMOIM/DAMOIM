package com.project.damoim.post.dto.response;


import lombok.*;

@Setter @Getter @ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class PostResponseDTO {
    private int pno;
    private String title;
    private String content;
    private String date;
    private String mid;

}
