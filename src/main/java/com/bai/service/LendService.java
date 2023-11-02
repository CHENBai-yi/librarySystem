package com.bai.service;

import com.bai.pojo.Lend;
import com.bai.pojo.Reader;

import java.util.List;

public interface LendService {

    // 添加借书记录
    int addLend(String bookId, Reader reader);

    // 查询个人借还记录
    List<Lend> queryMyLend(long readerId);

    // 归还书本
    int backBook(long bookId, Reader reader);
}
