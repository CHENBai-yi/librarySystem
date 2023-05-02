package com.bai.controller;

import com.bai.pojo.Book;
import com.bai.service.BookService;
import com.bai.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class BookController {

   @Autowired
   private BookService bookService;


   //查看所有的书籍
    @RequestMapping("/admin_books.html")
    public String getBooks(Model model, HttpSession session){
        List<Book> books = bookService.queryAllBook();
        model.addAttribute("books",books);
        return "admin_books";
    }

    //跳转至添加书籍信息
   @RequestMapping("book_add.html")
    public String ToaddBook(){
       return "admin_book_add";
   }
   @RequestMapping("book_add_do.html")
    public String addBook(Book book, @RequestParam("pubstr") String pubstr,@RequestParam("classId") String classId){
       book.setClassId(Integer.parseInt(classId));
       book.setPubDate(DateUtils.getDate(pubstr));
        bookService.addBook(book);
        return "admin_book_add";
   }

   //跳转至书本详情页
    @RequestMapping("admin_book_detail.html")
    public String ToBookDeatil(String bookId,Model model){
        Book detail = bookService.getBookDetailById(Long.parseLong(bookId));
        model.addAttribute("detail",detail);
        return "admin_book_detail";
    }


    //跳转编辑书本信息
    @RequestMapping("updatebook.html")
    public String toUpdateBook(String bookId,Model model){
        Book detail = bookService.getBookDetailById(Long.parseLong(bookId));
        model.addAttribute("detail",detail);
        return "admin_book_edit";
    }

    //编辑书本信息
    @RequestMapping("/book_edit_do.html")
    public String editBook(Book book,String bookId,String pubstr){
        bookService.updateBook(book,Long.parseLong(bookId),DateUtils.getDate(pubstr));
        return "redirect:/admin_books.html";
    }

    //删除书本
    @RequestMapping("/deletebook.html")
    public String delBook(String bookId){
        bookService.delBook(Long.parseLong(bookId));
        return "redirect:/admin_books.html";
    }
}
