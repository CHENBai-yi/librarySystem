package com.bai.dao;

import com.bai.pojo.Reader;
import com.bai.pojo.ReaderInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReaderMapper {
    Reader queryById(@Param("readerId") long adminId, @Param("password") String password);

    String getReaderName(@Param("readerId") long readerId);

    // 添加读者
    void addReader(Reader reader);

    // 修改读者密码
    void updatePassword(Reader reader);

    void saveAll(@Param("list") List<ReaderInfo> list);

    void saveAll_reader_card(@Param("reader_cards") List<Reader> reader_cards);

    List<ReaderInfo> findAll();
}
