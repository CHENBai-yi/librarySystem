package com.bai.service.Imp;

import com.bai.dao.BookMapper;
import com.bai.dao.LendMapper;
import com.bai.pojo.Admin;
import com.bai.pojo.Book;
import com.bai.pojo.Lend;
import com.bai.pojo.Reader;
import com.bai.pojo.bo.BookQueryBo;
import com.bai.pojo.vo.MoreNewBookIndexVo;
import com.bai.pojo.vo.NewBookDetailVo;
import com.bai.pojo.vo.RecommendedBooksVo;
import com.bai.service.BookService;
import com.bai.utils.constants.Constants;
import com.bai.utils.mapStruct.BookMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Service
public class BookServiceImp implements BookService {
    @Autowired
    LendMapper lendMapper;
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
        return bookMapper.queryByName('%' + bookName + '%');
    }

    @Override
    public List<RecommendedBooksVo> queryAllBooksVo() {
        List<Book> bookList = bookMapper.selectHeightScoreBook(Constants.RECOMMENDED_NEW_BOOK_SIZE);
        return BookMap.BOOK_MAP.getRecommendedBooksVo(bookList);
    }

    @Override
    public List<RecommendedBooksVo> queryNewAllBooksVo() {
        List<Book> bookList = bookMapper.selectNewBooks(Constants.RECOMMENDED_BOOK_SIZE);
        return BookMap.BOOK_MAP.getRecommendedBooksVo(bookList);
    }

    @Override
    public NewBookDetailVo selectNewBooksDetail(long type, String isbn, long bookId, HttpSession session, Model model) {
        NewBookDetailVo newBookDetailVo = bookMapper.selectNewBooksDetail(type, isbn, bookId, Constants.RECOMMENDED_NEW_BOOK_RELATION_SIZE);
        Object readercard = session.getAttribute("readercard");
        Object admin = session.getAttribute("admin");
        if (admin != null) {
            Admin admin1 = (Admin) admin;
            model.addAttribute("msg", "登录成功。欢迎您：管理员，" + admin1.getUsername());
            long adminId = admin1.getAdminId();
            Lend returnBook = lendMapper.findReturnBook(adminId, bookId);
            if (returnBook == null) {
                newBookDetailVo.setReturnBook(0);
            } else {
                newBookDetailVo.setReturnBook(1);
                Date lendDate = returnBook.getLendDate();
                newBookDetailVo.setLendDate(lendDate);
            }

        } else if (readercard != null) {
            Reader reader = (Reader) readercard;
            model.addAttribute("msg", "登录成功。欢迎您：" + reader.getUsername());
            long readerId = reader.getReaderId();
            Lend returnBook = lendMapper.findReturnBook(readerId, bookId);
            if (returnBook == null) {
                newBookDetailVo.setReturnBook(0);
            } else {
                newBookDetailVo.setReturnBook(1);
                Date lendDate = returnBook.getLendDate();
                newBookDetailVo.setLendDate(lendDate);
            }
        }
        return newBookDetailVo;
    }

    @Override
    public MoreNewBookIndexVo moreNewBookPage(BookQueryBo bookQueryBo) {
        MoreNewBookIndexVo moreNewBookIndexVo = bookMapper.moreNewBookPage();
        MoreNewBookIndexVo.PageDetail pageDetail = bookMapper.queryPageDetail(bookQueryBo);
        // if (pageDetail != null && pageDetail.getTotal() > 0) {
        List<MoreNewBookIndexVo.PageDetail.DataVo> dataVos = bookMapper.queryMoreNewBookIndexBookVo(bookQueryBo);
        pageDetail.setBookVos(dataVos);
        moreNewBookIndexVo.setPageDetail(pageDetail);
        // }
        return moreNewBookIndexVo;
    }
}
