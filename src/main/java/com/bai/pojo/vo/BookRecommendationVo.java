package com.bai.pojo.vo;

import lombok.Data;

import java.util.List;

/**
 * Author:XY
 * PACkAGE:com.bai.pojo.vo
 * Date:2023/5/18 13:47
 */
@Data
public class BookRecommendationVo {
    private Long readerId;
    private String username;
    private String recommendationTime;
    private List<DataVo> dataVos;

    @Data
    public static class DataVo {
        private Long bookId;
        private Integer classId;
        private String bookTitle;
        private String bookAuthor;
        private String publishYear;
        private String isbn;
        private String reason;
    }
}
