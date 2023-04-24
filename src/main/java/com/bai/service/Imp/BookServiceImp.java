package com.bai.service.Imp;

import com.bai.dao.BookMapper;
import com.bai.pojo.Book;
import com.bai.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
@Service
public class BookServiceImp implements BookService {
    @Autowired
    private BookMapper bookMapper;
    @Override
    public List<Book> queryAllBook() {
        return bookMapper.queryAllBook();
    }

    @Override
    public void addBook(Book book) {
        bookMapper.addBook(book);
    }

    @Override
    public Book getBookDetailById(long bookId) {
        return bookMapper.getBookDetailById(bookId);
    }

    @Override
    public void updateBook(Book book, long bookId, Date pubstr) {
        book.setBookId(bookId);
        book.setPubDate(pubstr);
        bookMapper.updateBook(book);
    }

    @Override
    public void delBook(long bookId) {
        bookMapper.delBook(bookId);
    }

    @Override
    public List<Book> queryByName(String bookName) {
        return bookMapper.queryByName('%'+bookName+'%');
    }
}
