package com.bai.service;

import com.bai.pojo.Lend;

import java.util.List;

public interface LendService {

    // 添加借书记录
    int addLend(Lend lend, String bookId);

    // 查询个人借还记录
    List<Lend> queryMyLend(long readerId);

    // 归还书本
    int backBook(long bookId);
}
