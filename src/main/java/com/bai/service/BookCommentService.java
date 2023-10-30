package com.bai.service;

import com.bai.pojo.bo.BookCommentBo;
import com.bai.pojo.vo.BookCommentVo;

import java.util.List;

/**
 * Author:XY
 * PACkAGE:com.bai.service
 * Date:2023/6/1 8:51
 */
public interface BookCommentService {
    BookCommentVo insertOneComment(BookCommentBo bookCommentBo);

    List<BookCommentVo> selectAllComment(long bookId);

    int deleteone(Long readerId, Integer commentId);

}
