package com.bai.pojo.vo;

import com.bai.utils.constants.Constants;
import lombok.Data;

import java.util.List;

/**
 * Author:XY
 * PACkAGE:com.bai.pojo.vo
 * Date:2023/4/27 21:01
 */
@Data
public class NoticesVo {
    private int total;
    private int cur;
    private int page_size = Constants.PAGESIZE;
    private List<NewsDataVo> noticesDataVos;
}
