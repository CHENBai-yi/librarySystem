package com.bai.dao;

import com.bai.pojo.Lend;

import java.util.List;

public interface LendMapper {

    //添加借书记录
    void addLend(Lend lend);
    //减去借阅的书籍
    void decBookNum(long bookId);

    //查询个人的所有借还信息
    List<Lend> queryMyLend(long readerId);

    //归还书本
    void backBook(long bookId);

    //归还后增加书本
    void incBookNum(long bookId);
}
