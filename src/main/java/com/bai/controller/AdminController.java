package com.bai.controller;

import cn.hutool.json.JSONUtil;
import com.bai.pojo.*;
import com.bai.pojo.vo.ChatVO;
import com.bai.service.*;
import com.bai.service.Imp.ConsultServiceImpl;
import com.bai.service.Imp.ExcelServiceImpl;
import com.bai.utils.constants.Constants;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;

import javax.servlet.http.HttpSession;
import java.io.ByteArrayOutputStream;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Slf4j
@Controller
public class AdminController {

    @Autowired
    ConsultServiceImpl consultServiceImp;
    @Autowired
    private AdminService adminService;
    @Autowired
    private NewsService newsService;
    @Autowired
    private AppointService appointService;
    @Autowired
    private BookService bookService;
    @Autowired
    private ChatService chatService;
    @Autowired
    private ExcelServiceImpl excelService;

    // 进入管理员界面
    @RequestMapping("/admin_main.html")
    public String toAdmin(Model model, HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        model.addAttribute("admin", admin);
        return "admin_main";
    }

    // 获取所有读者的信息
    @RequestMapping("/allreaders.html")
    public String getReaderInfo(Model model) {
        List<ReaderInfo> readers = adminService.getReaders();
        System.out.println(readers);
        model.addAttribute("readers", readers);
        return "admin_readers";
    }

    // 跳转至添加读者信息
    @RequestMapping("/reader_add.html")
    public String ToaddReader() {
        return "admin_reader_add";
    }

    // 添加读者信息
    @PostMapping("/reader_add_do.html")
    public String addReader(ReaderInfo readerInfo, String password) {
        Reader reader = new Reader();
        String readerId = "17034480" + (int) (Math.random() * 1000);
        readerInfo.setReaderId(Long.parseLong(readerId));
        reader.setReaderId(readerInfo.getReaderId());
        reader.setUsername(readerInfo.getName());
        reader.setPassword(password);
        adminService.addReader(readerInfo, reader);
        return "redirect:/allreaders.html";

    }

    // 删除读者
    @RequestMapping("/reader_delete.html")
    public String delReader(String readerId) {
        adminService.delReader(Long.parseLong(readerId));
        return "redirect:/allreaders.html";
    }

    // 跳转修改读者信息
    @RequestMapping("/reader_edit.html")
    public String ToupdateReader(String readerId, Model model) {
        ReaderInfo reader = adminService.getReader(Long.parseLong(readerId));
        model.addAttribute("readerInfo", reader);
        return "admin_reader_edit";
    }

    // 编辑读者信息
    @RequestMapping("/reader_edit_do.html")
    public String updateReader(ReaderInfo readerInfo) {
        adminService.updateReader(readerInfo);
        return "redirect:/allreaders.html";
    }

    // 跳转修改管理者密码
    @RequestMapping("/admin_repasswd.html")
    public String ToupdatePassword() {
        return "admin_repasswd";
    }

    // 修改管理者密码
    @RequestMapping("/admin_repasswd_do")
    public String updatePassword(String newPasswd, HttpSession session) {
        adminService.updatePassword(newPasswd, session);
        return "redirect:/admin_main.html";
    }

    // 查看借还日志
    @RequestMapping("/lendlist.html")
    public String showLend(Model model) {
        List<Lend> list = adminService.showLend();
        model.addAttribute("list", list);
        return "admin_lend_list";
    }

    // 删除借还日志
    @RequestMapping("/deletelend.html")
    public String delLend(String serNum) {
        adminService.delLend(Long.parseLong(serNum));
        return "redirect:/lendlist.html";
    }

    // 跳转至发布公告界面
    @RequestMapping("/admin_news_add.html")
    public String ToNewsAdd(Model model) {
        model.addAttribute("newsList", Constants.News.values());
        return "admin_news_add";
    }

    // 添加公告
    @RequestMapping("/admin_news_add_do.html")
    public String addNews(News news, HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        news.setNewsAdmin(admin.getUsername());
        news.setCreateTime(new Date());
        newsService.addNews(news);
        return "redirect:/admin_main.html";
    }

    // 跳转到公告列表界面
    @RequestMapping("/admin_news_list.html")
    public String ToNewsList(Model model) {
        List<News> news = newsService.queryAllNews();
        model.addAttribute("newsList", news);
        return "admin_news_list";
    }

    //    跳转修改对应的公告
    @RequestMapping("/admin_news_edit.html")
    public String ToupdateNews(String newsId, Model model) {
        News news = newsService.queryById(Long.parseLong(newsId));
        model.addAttribute("news", news);
        model.addAttribute("newsList", Constants.News.values());
        return "admin_news_edit";
    }

    // 修改公告
    @RequestMapping("/admin_news_edit_do.html")
    public String updateNews(News news) {
        newsService.updateNews(news);
        return "redirect:/admin_news_list.html";
    }

    // 删除公告
    @RequestMapping("/admin_news_delete.html")
    public String delNews(String newsId) {
        newsService.delNews(Long.parseLong(newsId));
        return "redirect:/admin_news_list.html";
    }

    // 查看详情
    @RequestMapping("/admin_news_detail.html")
    public String showDetail(String newsId, Model model) {
        News detail = newsService.queryById(Long.parseLong(newsId));
        model.addAttribute("detail", detail);
        return "admin_news_detail";
    }

    // 跳转至添加预约信息页面
    @RequestMapping("//admin_appoint_add.html")
    public String ToaddAppointInfo() {
        return "admin_appointinfo_add";
    }

    // 添加预约信息
    @RequestMapping("/admin_appoint_add_do.html")
    public String addAppointInfo(AppointInfo appointInfo, HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        Date appointTime = appointInfo.getAppointTime();
        appointInfo.setAdminName(admin.getUsername());
        appointInfo.setCreateTime(new Date());
        appointService.addAppointInfo(appointInfo);
        return "redirect:/admin_main.html";
    }

    // 获取所有的预约信息
    @RequestMapping("/admin_appoint_list.html")
    public String queryAllAppoint(Model model) {
        List<Appoint> appoints = appointService.queryAllAppoint();
        model.addAttribute("appointList", appoints);
        return "admin_appoint_list";
    }

    // 删除预约日志
    @RequestMapping("delete_appoint_do")
    public String delAppoint(String appointId) {
        appointService.delAppoint(Long.parseLong(appointId));
        return "redirect:/admin_appoint_list.html";
    }

    // 管理预约信息
    @RequestMapping("admin_appoint_info.html")
    public String ToAppointInfo(Model model) {
        AppointInfo appointInfo = appointService.queryInfo();
        model.addAttribute("appointInfo", appointInfo);
        return "admin_appointinfo_list";
    }

    // 编辑发布的信息
    @RequestMapping("admin_appointinfo_edit.html")
    public String ToupdateAppointInfo(Model model) {
        AppointInfo appointInfo = appointService.queryInfo();
        model.addAttribute("appointInfo", appointInfo);
        return "admin_appointinfo_edit";
    }

    @RequestMapping("admin_appointinfo_edit_do.html")
    public String updateAppointInfo(AppointInfo appointInfo) {
        appointInfo.setUpdateTime(new Date());
        appointService.updateAppointInfo(appointInfo);
        return "redirect:/admin_appoint_info.html";
    }

    @RequestMapping("admin_querybook.do")
    public String queryBook(String searchWord, Model model) {
        List<Book> books = bookService.queryByName(searchWord);
        model.addAttribute("books", books);
        return "admin_books";
    }

    // 选中聊天人页面
    @RequestMapping(Constants.AccessPageUrl.CONCAT_ME_ADMIN)
    public String concat_me_admin(Model model, HttpSession session, String readerName, Long readerId) throws Exception {
        ChatVO chatVO = bookService.getMsgVo(session);
        List<ChatVO> chatVOList = chatService.findAllRecoredsById(readerId);
        Map<String, WebSocketSession> sessionsMap = ConsultService.sessionsMap;
        if (readerId != null) {
            ConsultServiceImpl.admin.getAttributes().put("onlineKey", chatVO.getOnlineFlag());
            String key = readerId.toString();
            WebSocketSession session1 = sessionsMap.get(key);
            consultServiceImp.aVoid(session1, new TextMessage(JSONUtil.toJsonStr(chatVO)));
        }
        model.addAttribute("chatVOList", chatVOList);
        model.addAttribute("chatVo", chatVO);

        model.addAttribute("online", sessionsMap);
        return "concat_me_admin";
    }

    // 批量添加读者信息
    @PostMapping("/upload/excel")
    public String upload(MultipartFile boundFile, Model model) throws Exception {
        boolean flag = excelService.getExcel(boundFile);
        if (flag) {
            model.addAttribute("Message", "上传成功");
        } else {
            model.addAttribute("Message", "上传失败");
        }
        return "admin_reader_add";
    }

    @GetMapping(value = "/download/excel", produces = {"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "application/vnd.ms-excel"})
    @ResponseBody
    public Object download() {
        try {
            ByteArrayOutputStream value = excelService.generalExcel();
            if (Optional.ofNullable(value).isPresent()) {
                return value.toByteArray();
            }
        } catch (Exception e) {
            log.debug("execle下载失败！！");
        }
        return null;
    }
}
/**
 * todo 1. 柱状图分析 2. chat心跳 3.评论区 4.读者推荐
 */