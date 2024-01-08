package com.project.damoim.Util.date;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class DateChange {

    // postDate yyyy-MM-dd HH:mm
    public static String postDateChang(LocalDateTime date){
        DateTimeFormatter pattern = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
        return pattern.format(date);
    }
}
