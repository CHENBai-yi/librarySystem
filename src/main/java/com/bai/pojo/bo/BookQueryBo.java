package com.bai.pojo.bo;

import com.bai.utils.constants.Constants;
import lombok.Data;

/**
 * Author:XY
 * PACkAGE:com.bai.pojo.bo
 * Date:2023/5/21 12:54
 */
@Data
public class BookQueryBo {
    /*
    mypage=2&
    orderid=0&
    classno=&
    searchtxt=&
    searchfield=0&
    searchlibrary=北大中心馆&
    collectyear=2023&
    collectmonth=05&
    language=0&
    classno=&
    listflag=1&
    multiclassno=0&
    callnorderid=0&
    alllocflag=0#brow
    * */

    private Integer mypage;
    private Integer alllocflag;
    private Character classno;
    private Long multiclassno;
    private Integer callnorderid;
    private Integer orderid;
    private String searchtxt;
    private Integer searchfield;
    private String searchlibrary = "西昌学院图书馆";
    private String collectyear;
    private String collectmonth;
    private String language;
    private Integer listflag = 1;
    private Integer pageSize = Constants.NEW_BOOK_PAGE_SIZE_;

}
