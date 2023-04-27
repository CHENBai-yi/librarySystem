import com.bai.service.NewsService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Author:XY
 * PACkAGE:PACKAGE_NAME
 * Date:2023/4/27 20:11
 */
@SpringJUnitConfig(locations = {"classpath*:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestJunit {

    @Autowired
    NewsService newsService;

    @Test
    public void test() {
        newsService.showJournalismPage(0, null);
    }
}
