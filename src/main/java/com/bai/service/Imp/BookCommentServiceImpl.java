package com.bai.service.Imp;

import com.bai.dao.BookReviewsDao;
import com.bai.pojo.BookReviews;
import com.bai.pojo.bo.BookCommentBo;
import com.bai.pojo.vo.BookCommentVo;
import com.bai.service.BookCommentService;
import com.bai.utils.CommentTimeHelper;
import com.bai.utils.mapStruct.BookCommentMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Author:XY
 * PACkAGE:com.bai.service.Imp
 * Date:2023/6/1 8:51
 */
@Service("评论功能")
public class BookCommentServiceImpl implements BookCommentService {
    private static final String msgTemplate = "<li class=\"comment even thread-even depth-1\" data-comment-id=\"{9}\" data-reader-id=\"{10}\" id=\"comment-{0}\"><ul class=\"list-inline\"><li class=\"comt-main\" id=\"div-comment-{1}\"><div class=\"comment-header mb10\"><div class=\"author-box flex ac\"><span class=\"avatar-img comt-avatar\"><img alt=\"头像\" src=\"/static/images/avatar-default.png\" data-src=\"//www.clash-gaming.com/wp-content/themes/zibll%20V6.5/img/avatar-default.png\" class=\"lazyload avatar avatar-id-0\"></span><name class=\"flex ac flex1\"><b class=\"mr6\">{2}</b></name><a href=\"javascript:;\" data-action=\"comment_like\" class=\"action action-comment-like muted-2-color flex0 ml10 cby\" data-pid=\"{3}\"><svg class=\"icon mr3\" aria-hidden=\"true\"><use xlink:href=\"#icon-like\"></use></svg><text></text><count>{4}</count><div style=\"padding-right: 111px;margin-top: 23px;position: absolute;right: -11px;\"><button class=\"btn btn-danger cancel-comment\" style=\"position: fixed; display: none;\" onclick=\"cancel_btn(this)\">取消评论</button></div></a></div></div> <div class=\"comment-footer\"><div class=\"mb10 comment-content\" id=\"comment-content-{5}\">{6}</div><div class=\"comt-meta muted-2-color\"><span class=\"comt-author\" title=\"{7,time}\">{8}</span><span class=\"badge-approve\"></span></div></div></li></ul>";
    private static final String imgString = "<img class=\"smilie-icon\" data-src=\"http://www.clash-gaming.com/wp-content/themes/zibll%20V6.5/img/thumbnail.svg\" src=\"/static/picture/{0}.gif\" alt=\"表情[{1}]|library Demo\">";
    @Autowired
    private BookReviewsDao bookReviewsDao;

    @Override
    public BookCommentVo insertOneComment(BookCommentBo bookCommentBo) {
        BookReviews bookReviews = BookCommentMap.BOOK_COMMENT_MAP.bookCommentBoToBookReviews(bookCommentBo);
        bookReviews.setReaderId(bookCommentBo.getComment_parent());
        BookCommentVo bookCommentVo = new BookCommentVo();
        String timeString = CommentTimeHelper.getTimeString(new Date());
        // todo 插入数据库并返回评论vo
        if (bookReviewsDao.insert(bookReviews) > 0) {
            return getBookCommentVo(bookReviews, bookCommentVo, timeString);
        }
        bookCommentVo.setError(1);
        bookCommentVo.setMsg("评论提交失败");
        bookCommentVo.setWait_time(timeString);
        return bookCommentVo;
    }

    private BookCommentVo getBookCommentVo(BookReviews bookReviews, BookCommentVo bookCommentVo, String timeString) {
        String text = bookReviews.getReviewText();
        Pattern pattern = Pattern.compile("\\[g=(.*?)]");
        Matcher matcher = pattern.matcher(text);
        while (matcher.find()) {
            String group = matcher.group(1);
            String format = MessageFormat.format(imgString, group, group);
            text = text.replaceAll("\\[g=" + group + "]", format);
        }
        Integer id = bookReviews.getId();
        bookCommentVo.setError(1);
        bookCommentVo.setMsg("评论已提交成功");
        bookCommentVo.setWait_time(timeString);
        bookCommentVo.setHtml(MessageFormat.format(msgTemplate, id, id, bookReviews.getAuthor(), id, 9999, id, text, bookReviews.getReviewDate(), bookCommentVo.getWait_time(), bookReviews.getReaderId(), id));
        return bookCommentVo;
    }

    @Override
    public List<BookCommentVo> selectAllComment(long bookId) {
        List<BookReviews> bookReviews = bookReviewsDao.selectAll(bookId);
        ArrayList<BookCommentVo> bookCommentVos = new ArrayList<>();
        for (BookReviews bookReview : bookReviews) {
            bookCommentVos.add(getBookCommentVo(bookReview, new BookCommentVo(), CommentTimeHelper.getTimeString(bookReview.getReviewDate())));
        }
        return bookCommentVos;
    }

    @Override
    public int deleteone(Long readerId, Integer commentId) {
        try {
            return bookReviewsDao.deleteone(readerId, commentId);
        } catch (Exception e) {

        }
        return 0;
    }
}
