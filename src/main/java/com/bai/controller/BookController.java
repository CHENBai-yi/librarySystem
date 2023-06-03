package com.bai.controller;

import com.bai.pojo.Book;
import com.bai.pojo.bo.BookCommentBo;
import com.bai.pojo.bo.BookQueryBo;
import com.bai.pojo.vo.BookCommentVo;
import com.bai.pojo.vo.BookRecommendationVo;
import com.bai.pojo.vo.MoreNewBookIndexVo;
import com.bai.pojo.vo.NewBookDetailVo;
import com.bai.service.BookCommentService;
import com.bai.service.BookRecommendationService;
import com.bai.service.BookService;
import com.bai.utils.DateUtils;
import com.bai.utils.constants.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
public class BookController {

    @Autowired
    private BookService bookService;
    @Autowired
    private BookRecommendationService bookRecommendationService;
    @Autowired
    private BookCommentService bookCommentService;

    // 查看所有的书籍
    @RequestMapping("/admin_books.html")
    public String getBooks(Model model, HttpSession session) {
        List<Book> books = bookService.queryAllBook();
        model.addAttribute("books", books);
        return "admin_books";
    }

    // 跳转至添加书籍信息
    @RequestMapping("book_add.html")
    public String ToaddBook() {
        return "admin_book_add";
    }

    @RequestMapping("book_add_do.html")
    public String addBook(Book book, @RequestParam("pubstr") String pubstr, @RequestParam("classId") String classId, @RequestParam("bookCoverInp") MultipartFile multipartFile, HttpServletRequest httpServletRequest) {
        try {
            String bookCoverImg = bookService.uploadBookCoverImg(multipartFile, httpServletRequest);
            book.setClassId(Integer.parseInt(classId));
            book.setPubDate(DateUtils.getDate(pubstr));
            book.setCoverImg(bookCoverImg);
            bookService.addBook(book);
            return "admin_book_add";
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    // 跳转至书本详情页
    @RequestMapping("admin_book_detail.html")
    public String ToBookDeatil(String bookId, Model model) {
        Book detail = bookService.getBookDetailById(Long.parseLong(bookId));
        model.addAttribute("detail", detail);
        return "admin_book_detail";
    }

    // 跳转编辑书本信息
    @RequestMapping("updatebook.html")
    public String toUpdateBook(String bookId, Model model) {
        Book detail = bookService.getBookDetailById(Long.parseLong(bookId));
        model.addAttribute("detail", detail);
        return "admin_book_edit";
    }

    // 编辑书本信息
    @RequestMapping("/book_edit_do.html")
    public String editBook(Book book, String bookId, String pubstr, @RequestParam("bookCoverInp") MultipartFile multipartFile, HttpServletRequest httpServletRequest) {
        try {
            String bookCoverImg = bookService.uploadBookCoverImg(multipartFile, httpServletRequest);
            bookService.updateBook(book, Long.parseLong(bookId), DateUtils.getDate(pubstr), bookCoverImg);
            return "redirect:/admin_books.html";
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    // 删除书本
    @RequestMapping("/deletebook.html")
    public String delBook(String bookId) {
        bookService.delBook(Long.parseLong(bookId));
        return "redirect:/admin_books.html";
    }

    @RequestMapping(value = Constants.AccessPageUrl.XXTBCOUNTCLICK, method = {RequestMethod.GET})
    public String bookDetailAndRelationBook(@RequestParam(value = "jmptype", required = false) long type, @RequestParam(value = "isbn", required = false) String isbn, @RequestParam("newbookid") long bookId, Model model, HttpSession session) {
        NewBookDetailVo newBookDetailVos = bookService.selectNewBooksDetail(type, isbn, bookId, session);
        List<BookCommentVo> bookCommentVos = bookCommentService.selectAllComment(bookId);
        // todo 做ip下的浏览次数
        model.addAttribute("detailList", newBookDetailVos);
        model.addAttribute("bookComments", bookCommentVos);
        return "detail_new_book";
    }

    @RequestMapping(value = Constants.AccessPageUrl.HOTTERTUIJIAN, method = {RequestMethod.GET})
    public String hottertuijian(Model model) {
        List<BookRecommendationVo> bookRecommendationVoList = bookRecommendationService.findRecentlyHotBook();
        model.addAttribute("bookRecommendationList", bookRecommendationVoList);

        return "more_hot_book";
    }

    @RequestMapping(value = Constants.AccessPageUrl.MORE_NEW_BOOK, method = {RequestMethod.GET, RequestMethod.POST})
    public String morenewbook(BookQueryBo bookQueryBo, Model model) {
        MoreNewBookIndexVo moreNewBookIndexVo = bookService.moreNewBookPage(bookQueryBo);
        model.addAttribute("moreNewBookIndexVo", moreNewBookIndexVo);
        if (bookQueryBo == null) model.addAttribute("bookQuery", new BookQueryBo());
        else model.addAttribute("bookQuery", bookQueryBo);
        return "more_new_book";
    }

    @ResponseBody
    @PostMapping(path = Constants.AccessPageUrl.BOOK_COMMENT)
    public BookCommentVo bookComment(@Validated BookCommentBo bookCommentBo) {
        return bookCommentService.insertOneComment(bookCommentBo);
    }

}
