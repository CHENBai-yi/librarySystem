package com.bai.dao;

import com.bai.pojo.Lend;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LendMapper {

    // 添加借书记录
    int addLend(Lend lend);

    // 减去借阅的书籍
    void decBookNum(long bookId);

    // 查询个人的所有借还信息
    List<Lend> queryMyLend(long readerId);

    // 归还书本
    int backBook(long bookId);

    // 归还后增加书本
    void incBookNum(long bookId);

    Lend findReturnBook(@Param("readerId") long readerId, @Param("bookId") long bookId);
}
