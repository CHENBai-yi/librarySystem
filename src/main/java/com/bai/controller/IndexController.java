package com.bai.controller;

import com.bai.pojo.ClassInfo;
import com.bai.pojo.News;
import com.bai.pojo.vo.ChatVO;
import com.bai.pojo.vo.RecommendedBooksVo;
import com.bai.service.BookService;
import com.bai.service.ChatService;
import com.bai.service.ClassInfoService;
import com.bai.service.Imp.ConsultServiceImpl;
import com.bai.service.NewsService;
import com.bai.utils.constants.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.socket.WebSocketSession;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {
    @Autowired
    private NewsService newsService;

    @Autowired
    private ClassInfoService classInfoService;
    @Autowired
    private BookService bookService;
    @Autowired
    private ChatService chatService;

    @GetMapping("/index")
    public String indexPage(Model model) {
        List<News> newsList = newsService.queryAllNews();
        List<ClassInfo> classInfoList = classInfoService.selectClassInfoList();
        List<RecommendedBooksVo> recommendedBooksVos = bookService.queryNewAllBooksVo();
        List<RecommendedBooksVo> hotBooks = bookService.queryAllBooksVo();
        model.addAttribute("newsList", newsList);
        model.addAttribute("classInfoList", classInfoList);
        model.addAttribute("recommendedBooksVos", recommendedBooksVos);
        model.addAttribute("hotBooks", hotBooks);
        return "index_page";
    }

    @GetMapping(path = Constants.AccessPageUrl.RUGUANGUANLI)
    public String ruGuanGuanLi(Model model) {
        return "ruguanguanli";
    }

    @GetMapping(path = Constants.AccessPageUrl.WENMINGGONGYUE)
    public String wenMingGongYue(Model model) {
        return "civilized_reader_pact";
    }

    @GetMapping(path = Constants.AccessPageUrl.CONCATME)
    public String concatMe(Model model, HttpSession session) {
        ChatVO chatVO = bookService.getMsgVo(session);
        List<ChatVO> chatVOList = chatService.findAllRecoredsById(chatVO.getSenderId());
        WebSocketSession admin = ConsultServiceImpl.admin;
        if (admin != null) {
            chatVO.setOnlineFlag(admin.getAttributes().get("onlineKey") + "");
        }
        model.addAttribute("chatVOList", chatVOList);
        model.addAttribute("chatVo", chatVO);

        return "concat_me";
    }

    @ResponseBody
    @RequestMapping(path = "/v1/chat/completions/poststream/{id}", method = {RequestMethod.POST, RequestMethod.GET})
    public String poststream(Map<String, Object> map, @PathVariable("id") String a) {
        System.out.println(a);
        return "concat_me_bak  okook";
    }


}
