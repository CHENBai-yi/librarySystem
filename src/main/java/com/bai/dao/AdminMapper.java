package com.bai.dao;

import com.bai.pojo.Admin;
import com.bai.pojo.Lend;
import com.bai.pojo.Reader;
import com.bai.pojo.ReaderInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;


public interface AdminMapper {
      Admin queryById(@Param("adminId") long adminId,@Param("password") String password);

       String getAdminName(@Param("adminId") long adminId);
    //查询全部读者
    List<ReaderInfo> getReaders();

    //查询指定读者的信息
    ReaderInfo getReaderById(long readerId);

    //添加读者
    void addReader(ReaderInfo readerInfo);

    //删读者信息
    void delReader(long readerId);

    //修改读者信息
    void updateReader(ReaderInfo readerInfo);

    //修改管理者的密码
    void updatePassword(@Param("password") String password,@Param("adminId") long adminId);

    //查看借还日志
    List<Lend> showLend();

    //删除借还日志
    void delLend(long serNum);
}
