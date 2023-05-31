package com.bai.dao;

import com.bai.pojo.Reader;
import org.apache.ibatis.annotations.Param;

public interface ReaderMapper {
    Reader queryById(@Param("readerId") long adminId, @Param("password") String password);

    String getReaderName(@Param("readerId") long readerId);

    // 添加读者
    void addReader(Reader reader);

    // 修改读者密码
    void updatePassword(Reader reader);


}
