package com.bai.pojo;

import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * book_recommendation
 *
 * @author
 */
@Data
public class BookRecommendation implements Serializable {
    private static final long serialVersionUID = 1L;
    /**
     * 推荐ID
     */
    private Integer id;
    /**
     * 读者ID
     */
    private Long readerId;
    /**
     * 图书ID
     */
    private Long bookId;
    /**
     * 推荐理由
     */
    private String recommendationReason;
    /**
     * 推荐时间
     */
    private LocalDateTime recommendationTime;
}