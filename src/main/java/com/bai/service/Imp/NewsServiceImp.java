package com.bai.service.Imp;

import com.bai.dao.NewsMapper;
import com.bai.pojo.News;
import com.bai.pojo.vo.NewsDataVo;
import com.bai.pojo.vo.NoticesVo;
import com.bai.service.NewsService;
import com.bai.utils.constants.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsServiceImp implements NewsService {

    @Autowired
    private NewsMapper newsMapper;

    @Override
    public void addNews(News news) {
        newsMapper.addNews(news);
    }

    @Override
    public List<News> queryAllNews() {
        List<News> newsList = newsMapper.queryAllNews();
        return newsList;
    }

    @Override
    public News queryById(long newsId) {
        News news = newsMapper.queryById(newsId);
        return news;
    }

    @Override
    public void updateNews(News news) {
        newsMapper.updateNews(news);
    }

    @Override
    public void delNews(long newsId) {
        newsMapper.delNews(newsId);
    }

    @Override
    public NoticesVo showJournalismPage(Integer pageId, Integer pageSize) {
        if (pageSize == null) pageSize = Constants.PAGESIZE;
        if (pageId == null) pageId = 0;
        List<NewsDataVo> pageWithGroupByDate = newsMapper.findPageWithGroupByDate(pageId, pageSize, Constants.News.NEWS.code);
        int total = newsMapper.selectCnt(Constants.News.NEWS.code);
        NoticesVo noticesVo = new NoticesVo();
        noticesVo.setCur(pageId);
        noticesVo.setPage_size(pageSize);
        noticesVo.setTotal(total);
        noticesVo.setNoticesDataVos(pageWithGroupByDate);
        System.out.println(noticesVo);
        return noticesVo;
    }


}
