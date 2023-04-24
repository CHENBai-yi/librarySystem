package com.bai.service;

import com.bai.pojo.Book;

import java.util.Date;
import java.util.List;

public interface BookService {

    //查询所有书籍
    public List<Book> queryAllBook();

    //添加书籍
    public void addBook(Book book);

    //获取书本的信息
    Book getBookDetailById(long bookId);

    //更新书本信息
    void updateBook(Book book, long bookId, Date pubstr);

    //删除书本
    void delBook(long bookId);

    //模糊查询书本信息
    List<Book> queryByName(String bookName);

}
