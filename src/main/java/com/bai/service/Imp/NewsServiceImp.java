package com.bai.service.Imp;

import com.bai.dao.NewsMapper;
import com.bai.pojo.News;
import com.bai.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
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
}
