import com.bai.dao.NewsMapper;
import com.bai.pojo.News;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;

/**
 * Author:XY
 * PACkAGE:PACKAGE_NAME
 * Date:2023/4/30 15:25
 */

public class MybatisCacheTest {
    private final SqlSession sqlSession2;
    private SqlSession sqlSession;

    public MybatisCacheTest() throws IOException {
        InputStream resourceAsStream = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory build = new SqlSessionFactoryBuilder().build(resourceAsStream);
        sqlSession = build.openSession(true);
        sqlSession2 = build.openSession(true);
    }

    /**
     * 二级缓存测试
     * mybatis二级缓存失效情况
     * 1.mapper.xml中未加入<cache/>标签
     * 2.未关闭当前sqlsession的连接
     * 3.在sqlsession查询中途出现其它修改事务
     *
     * @throws IOException ioexception
     */
    @Test
    public void 二级缓存测试() throws IOException {
        NewsMapper userMapper = sqlSession.getMapper(NewsMapper.class);
        News user1 = userMapper.queryById(2L);
        News news = new News();
        news.setNewsId(2L);
        news.setNewsAdmin("张三");
        news.setNewsTitle("华迪实训15天");
        news.setNewsContent("华迪科技有限责任公司");
        userMapper.updateNews(news);
        sqlSession.close();
        NewsMapper userMapper2 = sqlSession2.getMapper(NewsMapper.class);
        News user2 = userMapper2.queryById(2L);
        sqlSession2.close();
        System.out.println(user1 == user2);
    }

    @After
    public void clos() {
        System.out.println("关闭sqlsession");
    }

}
