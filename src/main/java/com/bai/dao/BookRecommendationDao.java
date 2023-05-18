package com.bai.dao;

import com.bai.pojo.BookRecommendation;
import com.bai.pojo.vo.BookRecommendationVo;

import java.util.List;

public interface BookRecommendationDao {
    int deleteByPrimaryKey(Integer id);

    int insert(BookRecommendation record);

    int insertSelective(BookRecommendation record);

    BookRecommendation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BookRecommendation record);

    int updateByPrimaryKey(BookRecommendation record);

    List<BookRecommendationVo> findRecentlyHotBook();
}