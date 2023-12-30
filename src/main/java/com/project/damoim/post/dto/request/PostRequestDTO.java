package com.project.damoim.post.dto.request;


import lombok.*;

@Setter @Getter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PostRequestDTO {
    private String title;
    private String content;
    
}
