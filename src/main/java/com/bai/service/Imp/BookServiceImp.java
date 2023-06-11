package com.bai.service.Imp;

import com.bai.dao.BookMapper;
import com.bai.dao.LendMapper;
import com.bai.pojo.Admin;
import com.bai.pojo.Book;
import com.bai.pojo.Lend;
import com.bai.pojo.Reader;
import com.bai.pojo.bo.BookQueryBo;
import com.bai.pojo.vo.ChatVO;
import com.bai.pojo.vo.MoreNewBookIndexVo;
import com.bai.pojo.vo.NewBookDetailVo;
import com.bai.pojo.vo.RecommendedBooksVo;
import com.bai.service.BookService;
import com.bai.utils.constants.Constants;
import com.bai.utils.mapStruct.BookMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

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
    public void updateBook(Book book, long bookId, Date pubstr, String bookCoverImg) {
        book.setBookId(bookId);
        book.setPubDate(pubstr);
        book.setCoverImg(bookCoverImg);
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
    public NewBookDetailVo selectNewBooksDetail(long type, String isbn, long bookId, HttpSession session) {
        NewBookDetailVo newBookDetailVo = bookMapper.selectNewBooksDetail(type, isbn, bookId, Constants.RECOMMENDED_NEW_BOOK_RELATION_SIZE);
        Object readercard = session.getAttribute("readercard");
        Object admin = session.getAttribute("admin");
        if (admin != null) {
            Admin admin1 = (Admin) admin;
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

    @Override
    public String uploadBookCoverImg(MultipartFile multipartFile, HttpServletRequest httpServletRequest) throws IOException {
        String realPath = httpServletRequest.getServletContext().getRealPath("/");
        String path = "/static/img/";
        String originalFilename = multipartFile.getOriginalFilename();
        if (originalFilename == null) throw new RuntimeException();
        String fileSuffix = originalFilename.substring(originalFilename.lastIndexOf("."));
        String fileName = UUID.randomUUID().toString().replaceAll("-", "").concat(fileSuffix);
        File parent = new File(realPath, path);
        if (!parent.exists()) {
            parent.mkdirs();
        }
        File file = new File(parent, fileName);
        if (file.createNewFile()) {
            multipartFile.transferTo(file);
        }
        return path.concat(fileName);
    }

    @Override
    public ChatVO getMsgVo(HttpSession session) {

        Object readercard = session.getAttribute("readercard");
        Object admin = session.getAttribute("admin");
        ChatVO chatVO = new ChatVO();
        if (admin != null) {
            Admin admin1 = (Admin) admin;
            long adminId = admin1.getAdminId();
            chatVO.setSenderId(adminId);
            chatVO.setSenderName(admin1.getUsername());
            chatVO.setOnlineFlag(UUID.randomUUID().toString());
        } else if (readercard != null) {
            Reader reader = (Reader) readercard;
            long readerId = reader.getReaderId();
            chatVO.setSenderId(readerId);
            chatVO.setSenderName(reader.getUsername());
        }

        chatVO.setReceiverId(0L);
        chatVO.setReceiverName("baiyichen");
        // WebSocketSession session_admin = ConsultService.sessionsMap.get("admin");
        // if (session_admin == null) chatVO.setMessageId("");
        // else chatVO.setMessageId(session_admin.getId());
        return chatVO;
    }


}
