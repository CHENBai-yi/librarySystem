package com.bai.service.Imp;

import com.bai.dao.BookRecommendationDao;
import com.bai.pojo.vo.BookRecommendationVo;
import com.bai.service.BookRecommendationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Author:XY
 * PACkAGE:com.bai.service.Imp
 * Date:2023/5/18 13:44
 */
@Service
public class BookRecommendationServiceImpl implements BookRecommendationService {
    @Autowired
    private BookRecommendationDao bookRecommendationDao;

    @Override
    public List<BookRecommendationVo> findRecentlyHotBook() {
        return bookRecommendationDao.findRecentlyHotBook();
    }
}
