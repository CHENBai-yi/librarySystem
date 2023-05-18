import com.bai.pojo.News;
import com.bai.pojo.vo.BookRecommendationVo;
import com.bai.pojo.vo.NewBookDetailVo;
import com.bai.service.BookRecommendationService;
import com.bai.service.BookService;
import com.bai.service.NewsService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.HashSet;
import java.util.List;
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

    @Autowired
    NewsService newsService;
    @Autowired
    BookService bookService;
    @Autowired
    BookRecommendationService bookRecommendationService;

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
        List<BookRecommendationVo> recentlyHotBook = bookRecommendationService.findRecentlyHotBook();
        for (BookRecommendationVo bookRecommendationVo : recentlyHotBook) {
            System.out.println(bookRecommendationVo);
        }
    }

    @Test
    public void test() {
        newsService.showPageVo(0, null, 1);
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
