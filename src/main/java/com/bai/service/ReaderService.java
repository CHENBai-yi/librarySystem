package com.bai.service;

import com.bai.pojo.Reader;
import org.apache.ibatis.annotations.Param;

public interface ReaderService {
    public boolean hasReader(long readerId, String password);

    String getReaderName(@Param("readerId") long readerId);

    // 修改读者自己的密码
    void updatepassword(Reader reader);

    // 查看全部书本

//   //添加读者
//   void addReader(Reader reader);

}
