package com.bai.pojo.vo;

import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * Author:XY
 * PACkAGE:com.bai.pojo.vo
 * Date:2023/5/16 8:31
 */
@Data
public class NewBookDetailVo {
    private String title;
    private String subtitle;
    private String author;
    private Long newBookId;
    private String publishYear;
    private String isbn;
    private String coverImg;
    private String introduction;
    private Integer pageNum;
    private String authorIntroduction;
    private int catalog;
    private String bookType;
    private String content;
    private Integer bookPages;
    private String callNumber;
    private String libraryLocation;
    private int viewCount;
    private int returnBook;
    private Date lendDate;
    private List<RelatedBooks> relatedBooks;

    @Data
    public static class RelatedBooks {
        private long newBookId;
        private String publishYear;
        private String author;
        private String isbn;
        private String title;
        private String coverImg;
        private int classId;
    }
}
