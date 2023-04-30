package com.bai.controller;

import com.bai.pojo.News;
import com.bai.pojo.vo.NoticesVo;
import com.bai.service.Imp.NewsServiceImp;
import com.bai.utils.constants.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
        NoticesVo journalisms = newsService.showPageVo(pageId, null, Constants.News.NEWS.code);
        model.addAttribute("page", journalisms);
        return "more_notices_page";
    }

    @GetMapping("/news/journalism/page/{id}")
    public String showDetail(@PathVariable(name = "id") Long pageId, Model model) {
        News news = newsService.queryById(pageId);
        model.addAttribute("news", news);
        return "news_page";
    }

    @GetMapping(Constants.AccessPageUrl.NOTICE_URL + "/{id}")
    public String noticesPageRestful(@PathVariable(name = "id", required = false) @RequestParam(name = "id", required = false) Integer pageId, Model model) {
        NoticesVo journalisms = newsService.showPageVo(pageId, null, Constants.News.NOTICE.code);
        model.addAttribute("page", journalisms);
        return "more_notices_page";
    }

    @GetMapping(Constants.AccessPageUrl.NOTICE_URL)
    public String noticesPage(@RequestParam(name = "id", required = false) Integer pageId, Model model) {
        return this.noticesPageRestful(pageId, model);
    }

    @GetMapping(Constants.AccessPageUrl.ACTIVITY_URL + "/{id}")
    public String activityPageRestful(@PathVariable(name = "id", required = false) Integer pageId, Model model) {
        NoticesVo journalisms = newsService.showPageVo(pageId, null, Constants.News.ACTIVITY.code);
        model.addAttribute("page", journalisms);
        return "more_notices_page";
    }

    @GetMapping(Constants.AccessPageUrl.ACTIVITY_URL)
    public String activityPage(@RequestParam(name = "id", required = false) Integer pageId, Model model) {
        return this.activityPageRestful(pageId, model);
    }

}
