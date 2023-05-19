package com.bai.pojo.vo;

import com.bai.pojo.Book;
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
    private List<Map<Long, String>> callNumber;
    private List<String> language;
    private List<Book> bookVos;
}
