package com.bai.utils;

import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * Author:XY
 * PACkAGE:com.bai.utils
 * Date:2023/5/21 15:06
 */
public class QueryStringStyle extends ToStringStyle {
    public QueryStringStyle() {
        super();
        setUseClassName(false);
        setUseIdentityHashCode(false);
        setFieldSeparator("&");
        setContentStart("?");
        setContentEnd("");
    }

    @Override
    public void append(StringBuffer buffer, String fieldName, Object value, Boolean fullDetail) {
        if (value != null) {
            super.append(buffer, fieldName, value, fullDetail);
        }
    }

    @Override
    protected String getNullText() {
        return "null";
    }
}
