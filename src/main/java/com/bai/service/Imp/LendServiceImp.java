package com.bai.service.Imp;

import com.bai.dao.LendMapper;
import com.bai.pojo.Lend;
import com.bai.pojo.Reader;
import com.bai.service.BookService;
import com.bai.service.LendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class LendServiceImp implements LendService {

    @Autowired
    private LendMapper lendMapper;
    @Autowired
    private BookService bookService;

    @Transactional
    @Override
    public synchronized int addLend(String bookId, Reader reader) {
        if (bookId != null && reader != null) {
            long parseLong = Long.parseLong(bookId);
            Optional.ofNullable(bookService.getBookDetailById(parseLong)).ifPresent(action -> {
                int number = action.getNumber();
                if (number > 0) {
                    Lend lend = new Lend();
                    lend.setLendDate(new Date());
                    lend.setBookId(Long.parseLong(bookId));
                    lend.setReaderId(reader.getReaderId());
                    lendMapper.decBookNum(parseLong);
                    lendMapper.addLend(lend);
                }
            });
        }
        return 0;
    }

    @Override
    public List<Lend> queryMyLend(long readerId) {
        return lendMapper.queryMyLend(readerId);
    }

    @Transactional
    @Override
    public synchronized int backBook(long bookId, Reader reader) {
        if (reader != null) {
            return lendMapper.backBook(bookId, reader.getReaderId());
        }
        return 0;
    }
}
