package com.bai.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {
    // 时间转换
    public static Date getDate(String str) {
        try {
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            return df.parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
            return new Date();
        }
    }

//    public static Date tranDate(Date date){
//
//
//
//    }

}
