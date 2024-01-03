package com.project.damoim.post.common;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@AllArgsConstructor
public class Page {

    private int pageNo; // 클라이언트가 보낸 페이지번호
    private int amount; // 클라이언트가 보낸 목록게시물 수


    public Page() {
        this.pageNo = 1;
        this.amount = 10;
    }


    public int getPageStart() {
        return (pageNo - 1) * amount;
    }
}
