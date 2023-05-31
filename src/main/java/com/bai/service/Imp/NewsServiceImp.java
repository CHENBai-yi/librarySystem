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
    public NoticesVo showPageVo(Integer pageId, Integer pageSize, int type) {
        int page = 1;
        if (pageSize == null) pageSize = Constants.PAGESIZE;
        if (pageId == null) pageId = 0;
        else {
            page = pageId;
            pageId = (pageId - 1) * pageSize;
        }
        List<NewsDataVo> pageWithGroupByDate = newsMapper.findPageWithGroupByDate(pageId, pageSize, type);
        int total = newsMapper.selectCnt(type);
        NoticesVo noticesVo = new NoticesVo();
        noticesVo.setCur(page);
        noticesVo.setType(type);
        noticesVo.setPage_size(pageSize);
        noticesVo.setTotal(total);
        noticesVo.setNoticesDataVos(pageWithGroupByDate);
        return noticesVo;
    }
}
