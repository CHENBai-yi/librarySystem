package com.bai.dao;

import com.bai.pojo.Book;
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

    NewBookDetailVo selectNewBooksDetail(long type, String isbn, long bookId, int size);

}
