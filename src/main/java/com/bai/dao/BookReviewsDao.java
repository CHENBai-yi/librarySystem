package com.bai.dao;

import com.bai.pojo.BookReviews;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookReviewsDao {
    int deleteByPrimaryKey(Integer id);

    int insert(BookReviews record);

    int insertSelective(BookReviews record);

    BookReviews selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BookReviews record);

    int updateByPrimaryKey(BookReviews record);

    List<BookReviews> selectAll(long bookId);

    int deleteone(@Param("readerId") Long readerId, @Param("commentId") Integer commentId);
}