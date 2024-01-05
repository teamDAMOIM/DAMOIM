package com.project.damoim.recruit.entity;


import lombok.*;

import java.time.LocalDateTime;
import java.util.Locale;

@Getter@Setter@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Recruit {

    private int recruitNo; // 모집 게시물 번호
    private String recruitTitle; // 모집 게시물 제목
    private String recruitContent; // 모집 게시물 내용
    private String recruitCategory; // 모집 게시물 카테고리
    private LocalDateTime recruitStartdate; // 모집 시작 시간
    private LocalDateTime recruitEnddate; //  모집 종료 시간
    private String recruitAddress; // 모집 주소
    private int recruitCount; // 모집 참여자 카운트
    private int recruitMax; // 최대 모집자 수
    private boolean recruitCheck; // 모집 참여 여부
    private String memberId;

}
