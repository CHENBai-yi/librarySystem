import cn.hutool.json.JSONUtil;
import com.bai.dao.BookMapper;
import com.bai.pojo.News;
import com.bai.pojo.bo.BookQueryBo;
import com.bai.pojo.vo.MoreNewBookIndexVo;
import com.bai.pojo.vo.NewBookDetailVo;
import com.bai.service.BookRecommendationService;
import com.bai.service.BookService;
import com.bai.service.NewsService;
import com.bai.utils.QueryStringStyle;
import com.bai.utils.constants.Constants;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.util.AntPathMatcher;

import java.util.HashSet;
import java.util.Random;
import java.util.Set;

/**
 * Author:XY
 * PACkAGE:PACKAGE_NAME
 * Date:2023/4/27 20:11
 */
@SpringJUnitConfig(locations = {"classpath*:applicationContext.xml"})
@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
public class TestJunit {

    private final Set<String> accessUrl = new HashSet<>();
    @Autowired
    NewsService newsService;
    @Autowired
    BookService bookService;
    @Autowired
    BookRecommendationService bookRecommendationService;
    @Autowired
    BookMapper bookMapper;

    public static void main(String[] args) {
        News news = new News();

    }

    @Test
    public void testBookMapStruct() {
        System.out.println(bookService.queryAllBooksVo());
    }

    @Test
    public void testBookeDetail() {
        NewBookDetailVo newBookDetailVos = bookService.selectNewBooksDetail(0, " 9787113170202", 19, null);
        System.out.println(newBookDetailVos);
    }

    @Test
    public void testbookRecommendationHotVos() {
        MoreNewBookIndexVo x = bookService.moreNewBookPage(new BookQueryBo());
        System.out.println(JSONUtil.toJsonStr(x));
    }

    @Before
    public void testAntPathPaternMatcherBefore() {
        accessUrl.add("/");
        accessUrl.add("/index");
        accessUrl.add("/tologin");
        accessUrl.add("/logout.html");
        accessUrl.add("/checklogin");
        accessUrl.add("/static/**");
        accessUrl.add(Constants.AccessPageUrl.XXTBCOUNTCLICK);
        accessUrl.add(Constants.AccessPageUrl.READER_CHECK_LOGIN_URL);
        accessUrl.add(Constants.AccessPageUrl.HOTTERTUIJIAN);
        accessUrl.add(Constants.AccessPageUrl.READER_LOGIN_URL);
        accessUrl.add(Constants.AccessPageUrl.MORE_NEW_BOOK);
        accessUrl.add(Constants.AccessPageUrl.ACTIVITY_URL);
        accessUrl.add(Constants.AccessPageUrl.NOTICE_URL);
        accessUrl.add(Constants.AccessPageUrl.JOURNALISM_URL);
    }

    @Test
    public void testAntPathPaternMatcher() {
        // https://library.baiyichen.asia/xxtbcountclick;jsessionid=7F572EAE076A1CF45B5B2B051A6738AF?jmptype=9&isbn=9787530216835&newbookid=1
        // /xxtbcountclick;jsessionid=7F572EAE076A1CF45B5B2B051A6738AF
        AntPathMatcher antPathMatcher = new AntPathMatcher();
        System.out.println(antPathMatcher.matchStart(Constants.AccessPageUrl.NOTICE_URL + "/**", "/news/notice/page/2"));
    }

    @Test
    public void test() {
        BookQueryBo bookQueryBo = new BookQueryBo();
        System.out.println(ToStringBuilder.reflectionToString(bookQueryBo, new QueryStringStyle()));
        // newsService.showPageVo(0, null, 1);
        // System.out.println(bookMapper.moreNewBookPage());
        // System.out.println("----");
        // System.out.println(bookService.moreNewBookPage(null));
        // List<Map<String, Integer>> callNumber = bookMapper.moreNewBookPage().getCallNumber();
        // for (Map<String, Integer> longStringMap : callNumber) {
        //     char id = CharUtils.toCharacter(longStringMap.get("id"));
        //     System.out.println(id);
        //     System.out.println(CharUtils.toNumber(id));
        // }
        // System.out.println();
    }

    public enum Qiu {
        RED("红球", 33) {
            @Override
            public Set<Integer> getCode() {
                Random r = new Random();

                while (true) {
                    int e = r.nextInt(RED.range + 1);
                    if (e == 0) continue;
                    sets.add(e);
                    if (sets.size() == 6) break;
                }
                return sets;
            }
        },
        BLUE("蓝球", 16) {
            @Override
            public Set<Integer> getCode() {
                Random r = new Random();

                while (true) {
                    int e = r.nextInt(BLUE.range + 1);
                    if (e == 0) continue;
                    sets.add(e);
                    if (sets.size() == 1) break;
                }
                return sets;
            }
        };
        public final String color;
        public final int range;
        protected final Set<Integer> sets = new HashSet<>();

        Qiu(String color, int range) {
            this.color = color;
            this.range = range;

        }

        protected abstract Set<Integer> getCode();
    }
}
