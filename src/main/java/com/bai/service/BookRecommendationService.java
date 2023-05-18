package com.bai.service;

import com.bai.pojo.vo.BookRecommendationVo;

import java.util.List;

/**
 * Author:XY
 * PACkAGE:com.bai.service
 * Date:2023/5/18 13:44
 */
public interface BookRecommendationService {
    List<BookRecommendationVo> findRecentlyHotBook();
}
