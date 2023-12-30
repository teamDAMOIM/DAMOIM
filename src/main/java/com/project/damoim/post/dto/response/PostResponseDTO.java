package com.project.damoim.post.dto.response;


import lombok.*;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Setter @Getter @ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class PostResponseDTO {
    private String title;
    private String content;
    private LocalDateTime date;

}
