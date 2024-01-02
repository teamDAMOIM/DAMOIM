package com.project.damoim.post.common;


import lombok.*;

@Setter @Getter @ToString
@EqualsAndHashCode
@AllArgsConstructor
public class Search extends Page{

    private String type;
    private String keyword;

    public Search(){
        type = "";
        keyword = "";
    }

}
