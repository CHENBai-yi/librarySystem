package com.bai.dao;

import com.bai.pojo.Book;
import com.bai.pojo.bo.BookQueryBo;
import com.bai.pojo.vo.MoreNewBookIndexVo;
import com.bai.pojo.vo.NewBookDetailVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {
    public List<Book> queryAllBook();

    void addBook(Book book);

    Book getBookDetailById(long bookId);

    void updateBook(Book book);

    void delBook(long bookId);

    List<Book> queryByName(String bookName);

    List<Book> selectHeightScoreBook(@Param("recommendedBookSize") int recommendedBookSize);

    List<Book> selectNewBooks(@Param("recommendedBookSize") int recommendedNewBookSize);

    NewBookDetailVo selectNewBooksDetail(@Param("type") Long type, @Param("isbn") String isbn, @Param("bookId") Long bookId, @Param("size") Integer size);

    MoreNewBookIndexVo moreNewBookPage();

    List<MoreNewBookIndexVo.DataVo> queryMoreNewBookIndexBookVo(@Param("bookQueryBo") BookQueryBo bookQueryBo);
}
