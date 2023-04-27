package com.bai.controller;

import com.bai.pojo.vo.NoticesVo;
import com.bai.service.Imp.NewsServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Author:XY
 * PACkAGE:com.bai.controller
 * Date:2023/4/27 19:18
 */
@Controller
public class NewsController {
    @Autowired
    private NewsServiceImp newsService;

    @GetMapping("/news/journalism/page")
    public String moreNoticesPage(@RequestParam(name = "index", required = false) Integer pageId, Model model) {
        NoticesVo journalisms = newsService.showJournalismPage(pageId, null);
        model.addAttribute("page", journalisms);
        // todo 这块页面的分页渲染有待考究
        return "more_notices_page";
    }
}
