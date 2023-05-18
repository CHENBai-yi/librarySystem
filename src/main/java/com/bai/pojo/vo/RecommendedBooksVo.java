package com.bai.pojo.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * Author:XY
 * PACkAGE:com.bai.pojo.vo
 * Date:2023/5/2 16:49
 */
@Data
public class RecommendedBooksVo implements Serializable {
    private long newBookId;
    private String newBookTitle;
    private String pubDate;
    private String bookAuthor;
    private String publishYear;
    private String publish;
    private String isbn;
    private String coverImg;
    private int classId;
    private String introduction;
}
