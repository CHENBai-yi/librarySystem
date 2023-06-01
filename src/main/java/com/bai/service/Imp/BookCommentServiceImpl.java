package com.bai.service.Imp;

import com.bai.dao.BookReviewsDao;
import com.bai.pojo.BookReviews;
import com.bai.pojo.bo.BookCommentBo;
import com.bai.pojo.vo.BookCommentVo;
import com.bai.service.BookCommentService;
import com.bai.utils.mapStruct.BookCommentMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Author:XY
 * PACkAGE:com.bai.service.Imp
 * Date:2023/6/1 8:51
 */
@Service("评论功能")
public class BookCommentServiceImpl implements BookCommentService {
    private static final String msgTemplate = "<li class=\"comment even thread-even depth-1\" id=\"comment-18165\"><ul class=\"list-inline\"><li class=\"comt-main\" id=\"div-comment-18165\"><div class=\"comment-header mb10\"><div class=\"author-box flex ac\"><span class=\"avatar-img comt-avatar\"><img alt=\"头像\" src=\"http://www.clash-gaming.com/wp-content/themes/zibll%20V6.5/img/avatar-default.png\" data-src=\"//www.clash-gaming.com/wp-content/themes/zibll%20V6.5/img/avatar-default.png\" class=\"lazyload avatar avatar-id-0\"></span><name class=\"flex ac flex1\"><b class=\"mr6\">Chen Bai Yi</b></name><a href=\"javascript:;\" data-action=\"comment_like\" class=\"action action-comment-like muted-2-color flex0 ml10\" data-pid=\"18165\"><svg class=\"icon mr3\" aria-hidden=\"true\"><use xlink:href=\"#icon-like\"></use></svg><text></text><count>0</count></a></div></div><div class=\"comment-footer\"><div class=\"mb10 comment-content\" id=\"comment-content-18165\">zsdfsdfdsaf<img class=\"smilie-icon\" src=\"http://www.clash-gaming.com/wp-content/themes/zibll%20V6.5/img/thumbnail.svg\" data-src=\"https://www.clash-gaming.com/wp-content/themes/zibll%20V6.5/img/smilies/touxiao.gif\" alt=\"表情[touxiao]|Clash for Windows\"></div><div class=\"comt-meta muted-2-color\"><span class=\"comt-author\" title=\"2023年06月01日 08:33:15\">26秒前</span><span class=\"badge-approve\"></span></div></div></li></ul>";
    @Autowired
    private BookReviewsDao bookReviewsDao;

    @Override
    public BookCommentVo insertOneComment(BookCommentBo bookCommentBo) {
        BookReviews bookReviews = BookCommentMap.BOOK_COMMENT_MAP.bookCommentBoToBookReviews(bookCommentBo);
        if (bookReviewsDao.insert(bookReviews) > 0) {
            // todo 插入数据库并返回评论vo
        }
        return null;
    }
}
