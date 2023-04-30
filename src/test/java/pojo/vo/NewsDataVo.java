package pojo.vo;

import com.bai.pojo.News;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * Author:XY
 * PACkAGE:com.bai.pojo.vo
 * Date:2023/4/27 22:24
 */
@Data
public class NewsDataVo implements Serializable {
    private String dateTime;
    private List<News> data;
}
