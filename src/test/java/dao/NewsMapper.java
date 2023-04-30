package dao;

import com.bai.pojo.vo.NewsDataVo;
import org.apache.ibatis.annotations.Param;
import pojo.News;

import java.util.List;

public interface NewsMapper {
    // 添加公告
    void addNews(News news);

    // 获取所有的公告
    List<News> queryAllNews();

    // 根据id查询对应的内容
    News queryById(long newsId);

    // 编辑相应的公告
    void updateNews(News news);

    // 删除对应的公告
    void delNews(long newsId);

    List<NewsDataVo> findPageWithGroupByDate(@Param("pageId") int pageId, @Param("pageSize") int pageSize, @Param("type") int type);

    int selectCnt(@Param("type") int type);
}
