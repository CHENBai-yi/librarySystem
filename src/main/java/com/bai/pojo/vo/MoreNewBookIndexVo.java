package com.bai.pojo.vo;

import lombok.Data;

import java.util.List;
import java.util.Map;

/**
 * Author:XY
 * PACkAGE:com.bai.pojo.vo
 * Date:2023/5/19 19:43
 */
@Data
public class MoreNewBookIndexVo {
    private List<Map<String, List<String>>> date;
    private List<Map<Long, String>> subjects;
    private List<Map<String, Integer>> callNumber;
    private List<String> language;
    private List<DataVo> bookVos;

    @Data
    public static class DataVo {
        private Long classId;
        private Long bookId;
        private String isbn;
        private String bookName;
        private String bookAuthor;
        private String coverImg;
        private String publishYear;
    }
}
