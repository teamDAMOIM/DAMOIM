package com.project.damoim.post.dto.response;


import com.project.damoim.post.dto.request.PostListRequestDTO;
import lombok.*;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

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
