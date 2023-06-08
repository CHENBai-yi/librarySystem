package com.bai.service;

import com.bai.pojo.vo.ChatVO;

import java.util.List;

/**
 * Author:XY
 * PACkAGE:com.bai.service.Imp
 * Date:2023/6/7 22:29
 */
public interface ChatService {
    void saveChat(ChatVO chatVO);

    List<ChatVO> findAllRecoreds(Long senderId);

    List<ChatVO> findAllRecoredsById(Long senderId);
}
