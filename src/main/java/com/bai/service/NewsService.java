package com.bai.service;

import com.bai.pojo.News;
import com.bai.pojo.vo.NoticesVo;

import java.util.List;

public interface NewsService {

    //添加公告
    void addNews(News news);

    //获取所有公告
    List<News> queryAllNews();

    //根据id查询对应的内容
    News queryById(long newsId);

    //修改发布的公告
    void updateNews(News news);

    //删除对应的公告
    void delNews(long newsId);

    NoticesVo showPageVo(Integer pageId, Integer pageSize, int type);
}
