package com.bai.service.Imp;

import com.bai.dao.ChatDao;
import com.bai.pojo.vo.ChatVO;
import com.bai.service.ChatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Author:XY
 * PACkAGE:com.bai.service.Imp
 * Date:2023/6/7 22:30
 */
@Service
@Transactional
public class ChatServiceImpl implements ChatService {
    @Autowired
    private ChatDao chatDao;

    @Override
    public void saveChat(ChatVO chatVO) {
        chatDao.saveChat(chatVO);
    }

    @Override
    public List<ChatVO> findAllRecoreds(Long senderId) {
        return chatDao.findAllRecoreds(senderId);
    }

    @Override
    public List<ChatVO> findAllRecoredsById(Long senderId) {
        if (senderId != null) return chatDao.findAllRecoreds(senderId);
        return null;
    }
}
