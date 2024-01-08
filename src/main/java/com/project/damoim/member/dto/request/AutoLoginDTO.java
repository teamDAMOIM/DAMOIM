package com.project.damoim.member.dto.request;

import lombok.*;

import java.time.LocalDateTime;

@Setter @Getter @ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class AutoLoginDTO {
    private String sessionId;
    private LocalDateTime autoDate;
    private String memberId;
}
