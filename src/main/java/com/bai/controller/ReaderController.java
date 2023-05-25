package com.bai.controller;

import com.bai.pojo.*;
import com.bai.service.*;
import com.bai.utils.DateUtils;
import com.bai.utils.constants.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class ReaderController {

    @Autowired
    private AdminService adminService;
    @Autowired
    private ReaderService readerService;
    @Autowired
    private BookService bookService;
    @Autowired
    private LendService lendService;

    @Autowired
    private NewsService newsService;

    @Autowired
    private AppointService appointService;

//    @RequestMapping("/reader_main.html")
//    public String toReaderMain(){
//        return "reader_main";
//    }

    static String getString(RequestAttributes requestAttributes) {
        Object attribute = requestAttributes.getAttribute(Constants.READER_REFERER, 1);
        if (attribute != null) {
            String s = (String) attribute;
            if (s.startsWith(Constants.AccessPageUrl.XXTBCOUNTCLICK)) {
                requestAttributes.removeAttribute(Constants.READER_REFERER, 1);
                return "forward:" + s;
            }
        }
        return null;
    }

    // 跳转至主页面并展示内容
    @RequestMapping(value = {"/reader_admin", "/reader_main.html"})
    public String toReadeAdmin(Model model, HttpSession session) {
        model.addAttribute("readercard", session.getAttribute("readercard"));
        List<News> news = newsService.queryAllNews();

        model.addAttribute("news", news);
        return "reader_main";
    }

    // 展示公告详情
    @RequestMapping("/news_detail.html")
    public String showNewsDetail(String newsId, Model model) {
        News news = newsService.queryById(Long.parseLong(newsId));
        model.addAttribute("news", news);
        return "reader_news_detail";
    }

    // 查看全部书籍
    @RequestMapping("reader_books.html")
    public String getBooks(Model model, HttpSession session) {
        List<Book> books = bookService.queryAllBook();
        Reader reader = (Reader) session.getAttribute("readercard");
        List<Lend> list = lendService.queryMyLend(reader.getReaderId());
        model.addAttribute("myLendList", list);
        model.addAttribute("books", books);
        return "reader_books";
    }

    // 书籍详情
    @RequestMapping("/reader_book_detail.html")
    public String ToBookDeatil(String bookId, Model model) {
        Book detail = bookService.getBookDetailById(Long.parseLong(bookId));
        model.addAttribute("detail", detail);
        return "reader_book_detail";
    }

    // 模糊查询书籍信息
    @RequestMapping("/reader_querybook_do.html")
    public String queryByName(String searchWord, Model model) {
        List<Book> books = bookService.queryByName(searchWord);
        model.addAttribute("books", books);
        return "reader_books";
    }

    // 查看个人信息
    @RequestMapping("/reader_info.html")
    public String getReaderInfo(HttpSession session, Model model) {
        Reader reader = (Reader) session.getAttribute("readercard");
        ReaderInfo readerinfo = adminService.getReader(reader.getReaderId());
        System.out.println(reader.getReaderId());
        model.addAttribute("readerinfo", readerinfo);
        model.addAttribute("readercard", reader);
        return "reader_info";
    }

//    更新个人信息

    // 跳转至更新信息页面
    @RequestMapping("reader_info_edit.html")
    public String ToUpdateReaderInfo(HttpSession session, Model model) {
        Reader reader = (Reader) session.getAttribute("readercard");
        ReaderInfo readerinfo = adminService.getReader(reader.getReaderId());
        model.addAttribute("readerinfo", readerinfo);
        model.addAttribute("readercard", reader);
        return "reader_info_edit";
    }

    @RequestMapping("/reader_edit_do_r.html")
    public String updateReader(ReaderInfo readerInfo, String birth) {
        readerInfo.setBirth(DateUtils.getDate(birth));
        adminService.updateReader(readerInfo);
        return "redirect:/reader_info.html";
    }

    // 借阅书籍
    @RequestMapping(Constants.AccessPageUrl.LENDBOOK)
    public String addLend(String bookId, HttpSession session) {
        Lend lend = new Lend();
        lend.setLendDate(new Date());
        lend.setBookId(Long.parseLong(bookId));
        Reader reader = (Reader) session.getAttribute("readercard");
        lend.setReaderId(reader.getReaderId());
        lendService.addLend(lend, bookId);
        return getReferer();
    }

    // 读者的借还信息
    @RequestMapping("/mylend.html")
    public String myLend(HttpSession session, Model model) {
        Reader reader = (Reader) session.getAttribute("readercard");
        List<Lend> list = lendService.queryMyLend(reader.getReaderId());
        model.addAttribute("list", list);
        return "reader_lend_list";
    }

    // 归还书本
    @RequestMapping(Constants.AccessPageUrl.RETURNBOOK)
    public String backBook(String bookId) {
        lendService.backBook(Long.parseLong(bookId));
        return getReferer();
    }

    private String getReferer() {
        RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
        if (requestAttributes != null) {
            String s = getString(requestAttributes);
            if (s != null) return s;
        }
        return "redirect:/reader_books.html";
    }

    // 跳转修改读者密码
    @RequestMapping("/reader_repasswd.html")
    public String ToupdatePassword() {
        return "reader_repasswd";
    }

    // 修改管读者密码
    @RequestMapping("/reader_repasswd_do")
    public String updatePassword(String newPasswd, HttpSession session) {
        Reader reader = new Reader();
        reader.setPassword(newPasswd);
        Reader readerInfo = (Reader) session.getAttribute("readercard");
        reader.setReaderId(readerInfo.getReaderId());
        readerService.updatepassword(reader);
        return "redirect:/reader_admin";
    }

    // 跳转至预约界面
    @RequestMapping("/reader_appoint_show.html")
    public String ToAppoint(Model model) {
        AppointInfo appointInfo = appointService.queryInfo();
        System.out.println(appointInfo);
        model.addAttribute("appointinfo", appointInfo);

        return "reader_appoint_show";

    }

    // 跳转至预约编辑页面
    @RequestMapping("/reader_appoint.html")
    public String ToAppointFace(Model model) {
        List<RoomInfo> roomInfos = appointService.queryRoomInfo();
        model.addAttribute("roominfos", roomInfos);

        List<Book> books = bookService.queryAllBook();
        model.addAttribute("books", books);
        return "reader_appoint";
    }

    // 提交预约
    @RequestMapping("/reader_appoint_do")
    public String Appoint(String bookName, String room, String seatNum, HttpSession session) {
        Appoint appoint = new Appoint();
        Reader reader = (Reader) session.getAttribute("readercard");
        String location = "自习室:" + room + "座位号:" + seatNum;
        appoint.setLocation(location);
        appoint.setBookName(bookName);
        appoint.setReaderId(reader.getReaderId());
        appoint.setUsername(reader.getUsername());
        appoint.setAppointTime(new Date());
        appointService.addAppointTake(appoint);
        return "redirect:/reader_admin";
    }

    // 查询个人的预约记录
    @RequestMapping("/reader_appoint_list.html")
    public String showAppointTake(HttpSession session, Model model) {
        Reader reader = (Reader) session.getAttribute("readercard");
        List<Appoint> appoints = appointService.queryAppointTake(reader.getReaderId());
        model.addAttribute("appoints", appoints);
        return "reader_appoint_list";
    }

    @RequestMapping("/reader_register.html")
    public String toRegister() {
        return "reader_register";
    }

    /**
     * 注册
     *
     * @param readerInfo
     * @param model
     * @param password
     * @return
     */
    @RequestMapping("/reader_register.do")
    public String register(ReaderInfo readerInfo, Model model, @RequestParam("password") String password) {
        Reader reader = new Reader();
        String readerId = "17034480" + (int) (Math.random() * 1000);
        reader.setReaderId(Long.parseLong(readerId));
        reader.setPassword(password);
        reader.setUsername(readerInfo.getName());
        readerInfo.setReaderId(Long.parseLong(readerId));
        adminService.addReader(readerInfo, reader);
        model.addAttribute("readerId", readerId);
        System.out.println(reader.getReaderId());
        return "reader_register";
    }


}
