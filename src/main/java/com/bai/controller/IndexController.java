package com.bai.controller;

import com.bai.pojo.ClassInfo;
import com.bai.pojo.News;
import com.bai.service.ClassInfoService;
import com.bai.service.NewsService;
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

    @GetMapping("/index")
    public String indexPage(Model model) {
        List<News> newsList = newsService.queryAllNews();
        List<ClassInfo> classInfoList = classInfoService.selectClassInfoList();
        model.addAttribute("newsList", newsList);
        model.addAttribute("classInfoList", classInfoList);
        return "index_page";
    }
}
