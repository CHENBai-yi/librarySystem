package com.bai.dao;

import com.bai.pojo.Chat;

public interface ChatDao {
    int deleteByPrimaryKey(Long messageId);

    int insert(Chat record);

    int insertSelective(Chat record);

    Chat selectByPrimaryKey(Long messageId);

    int updateByPrimaryKeySelective(Chat record);

    int updateByPrimaryKey(Chat record);
}