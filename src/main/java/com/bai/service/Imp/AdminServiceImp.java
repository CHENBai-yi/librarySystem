package com.bai.service.Imp;

import com.bai.dao.AdminMapper;
import com.bai.dao.ReaderMapper;
import com.bai.pojo.Admin;
import com.bai.pojo.Lend;
import com.bai.pojo.Reader;
import com.bai.pojo.ReaderInfo;
import com.bai.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class AdminServiceImp implements AdminService {
    @Autowired
    private AdminMapper adminMapper;
    @Autowired
    private ReaderMapper readerMapper;

    @Override
    public boolean hasAdmin(long adminId, String password) {
        if (adminMapper.queryById(adminId, password) != null) {
            return true;
        }
        return false;
    }

    @Override
    public String getAdminName(long adminId) {
        return adminMapper.getAdminName(adminId);
    }

    // 获取所有读者的信息

    @Override
    public List<ReaderInfo> getReaders() {
        return adminMapper.getReaders();
    }

    // 根据Id查询读者信息

    @Override
    public ReaderInfo getReader(long readerId) {
        return adminMapper.getReaderById(readerId);
    }

    // 添加读者信息

    @Override
    public void addReader(ReaderInfo readerInfo, Reader reader) {
        readerMapper.addReader(reader);
        adminMapper.addReader(readerInfo);
    }

    // 删除读者

    @Override
    public void delReader(long readerId) {
        adminMapper.delReader(readerId);
    }

    // 修改读者信息

    @Override
    public void updateReader(ReaderInfo readerInfo) {
        adminMapper.updateReader(readerInfo);

    }

    // 修改管理者的密码

    @Override
    public void updatePassword(String password, HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        long adminId = admin.getAdminId();
        adminMapper.updatePassword(password, adminId);
    }

    @Override
    public List<Lend> showLend() {
        List<Lend> list = adminMapper.showLend();
        return list;
    }

    @Override
    public void delLend(long serNum) {
        adminMapper.delLend(serNum);
    }


}
