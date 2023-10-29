package com.bai.dao;

import com.bai.pojo.IpInfo;
import com.bai.pojo.vo.DataSheetVo;

import java.util.List;

public interface IpInfoDao {
    int deleteByPrimaryKey(String ipAddress);

    int insert(IpInfo record);

    int insertSelective(IpInfo record);

    IpInfo selectByPrimaryKey(String ipAddress);

    int updateByPrimaryKeySelective(IpInfo record);

    int updateByPrimaryKey(IpInfo record);

    List<IpInfo> findAll();

    List<DataSheetVo.PrettierChart> findAllGroupByDate();
}