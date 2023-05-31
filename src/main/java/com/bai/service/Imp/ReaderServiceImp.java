package com.bai.service.Imp;

import com.bai.dao.ReaderMapper;
import com.bai.pojo.Reader;
import com.bai.service.ReaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReaderServiceImp implements ReaderService {
    @Autowired
    private ReaderMapper readerMapper;

    @Override
    public boolean hasReader(long readerId, String password) {
        if (readerMapper.queryById(readerId, password) != null) {
            return true;
        }
        return false;
    }

    @Override
    public String getReaderName(long readerId) {
        return readerMapper.getReaderName(readerId);
    }

    @Override
    public void updatepassword(Reader reader) {
        readerMapper.updatePassword(reader);
    }
}
