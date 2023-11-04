package com.bai.service;

import com.bai.pojo.Lend;
import com.bai.pojo.Reader;
import com.bai.pojo.ReaderInfo;
import org.apache.ibatis.annotations.Param;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface AdminService {
    public boolean hasAdmin(long adminId, String password);

    ;

    String getAdminName(@Param("adminId") long adminId);

    List<ReaderInfo> getReaders();

    // 根据Id查询读者信息
    ReaderInfo getReader(long readerId);

    // 添加读者
    void addReader(ReaderInfo readerInfo, Reader reader);

    // 删除读者信息
    void delReader(long readerId);

    // 修改读者信息
    int
    updateReader(ReaderInfo readerInfo);

    // 修改管理者的登录密码
    void updatePassword(String password, HttpSession session);

    // 查看借还日志
    List<Lend> showLend();

    // 删除借还日志
    void delLend(long serNum);
}
