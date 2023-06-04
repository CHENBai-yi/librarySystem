package com.bai.controller;

import com.bai.pojo.ClassInfo;
import com.bai.pojo.News;
import com.bai.pojo.vo.RecommendedBooksVo;
import com.bai.service.BookService;
import com.bai.service.ClassInfoService;
import com.bai.service.NewsService;
import com.bai.utils.constants.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private NewsService newsService;

    @Autowired
    private ClassInfoService classInfoService;
    @Autowired
    private BookService bookService;

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
    public String concatMe(Model model) {
        return "concat_me";
    }


}
