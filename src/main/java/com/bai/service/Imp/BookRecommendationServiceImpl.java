package com.bai.service.Imp;

import com.bai.dao.BookRecommendationDao;
import com.bai.pojo.BookRecommendation;
import com.bai.pojo.vo.BookRecommendationVo;
import com.bai.service.BookRecommendationService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;

/**
 * Author:XY
 * PACkAGE:com.bai.service.Imp
 * Date:2023/5/18 13:44
 */
@Service
@Slf4j
public class BookRecommendationServiceImpl implements BookRecommendationService {
    @Autowired
    private BookRecommendationDao bookRecommendationDao;

    @Override
    public List<BookRecommendationVo> findRecentlyHotBook() {
        return bookRecommendationDao.findRecentlyHotBook();
    }

    @Transactional
    @Override
    public ResponseEntity<Object> addBookRecommendation(BookRecommendation bookRecommendation) {
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            bookRecommendation.setRecommendationTime(LocalDateTime.now());
            bookRecommendationDao.insert(bookRecommendation);
            hashMap.put("code", 1);
            hashMap.put("msg", " 你的推荐已收到！");
            return ResponseEntity.ok(hashMap);
        } catch (Exception e) {
            log.debug("推荐失败！！");
        }
        hashMap.put("code", 0);
        hashMap.put("msg", " 错误 ！！");
        return ResponseEntity.ok(hashMap);
    }
}
