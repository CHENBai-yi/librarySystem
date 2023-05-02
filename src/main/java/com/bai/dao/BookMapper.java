package com.bai.dao;

import com.bai.pojo.Book;
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
}
