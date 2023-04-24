package com.bai.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;


@Data
//@AllArgsConstructor
//@NoArgsConstructor
public class Book implements Serializable {
    private long bookId;
    private String name;
    private String author;
    private String publish;
    private String ISBN;
    private String introduction;
    private String language;
    private BigDecimal price;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date pubDate;
    private int classId;
    private int number;
}
