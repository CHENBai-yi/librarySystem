package com.bai.pojo.vo;

import cn.hutool.core.date.DateUtil;
import com.bai.utils.DateUtils;
import com.fasterxml.jackson.annotation.JsonGetter;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

/**
 * Author:XY
 * PACkAGE:com.bai.pojo.vo
 * Date:2023/10/29 20:48
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DataSheetVo implements Serializable {
    private static final long serialVersionUID = 1L;
    protected String name;
    protected Integer val;

    @JsonTypeInfo(include = JsonTypeInfo.As.WRAPPER_ARRAY, use = JsonTypeInfo.Id.NAME)
    public static class PrettierChart extends DataSheetVo {
        public PrettierChart() {
        }

        public PrettierChart(String name, Integer val) {
            super(name, val);
        }

        @Override
        public String getName() {
            String name1 = super.getName();
            Date date = DateUtils.getDate(name1);
            return DateUtil.format(date, "yyyy-MM-dd");
        }
    }

    public static class NightingaleChart extends DataSheetVo {
        public NightingaleChart() {
        }

        public NightingaleChart(String name, Integer val) {
            super(name, val);
        }

        @JsonGetter("name")
        @Override
        public String getName() {
            return super.getName();
        }

        @JsonGetter("value")
        @Override
        public Integer getVal() {
            return super.getVal();
        }
    }

}
