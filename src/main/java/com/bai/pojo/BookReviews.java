package com.bai.pojo;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * book_reviews
 *
 * @author
 */
@Data
public class BookReviews implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
    private String reviewText;
    private Long bookId;
    private Long readerId;
    private Timestamp reviewDate;
    private String author;
}