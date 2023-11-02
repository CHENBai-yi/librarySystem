package com.bai.service;

import com.bai.pojo.Appoint;
import com.bai.pojo.AppointInfo;
import com.bai.pojo.RoomInfo;

import java.util.List;

public interface AppointService {

    // 添加预约信息
    void addAppointInfo(AppointInfo appointInfo);

    // 获取预约信息
    AppointInfo queryInfo();

    List<AppointInfo> queryInfoList();

    // 获取自习室信息
    List<RoomInfo> queryRoomInfo();

    // 添加预约记录
    void addAppointTake(Appoint appoint);

    // 获取个人预约记录
    List<Appoint> queryAppointTake(long readerId);

    // 获取所有的预约记录
    List<Appoint> queryAllAppoint();

    // 删除预约记录
    void delAppoint(long appointId);

    // 修改发布的预约信息
    void updateAppointInfo(AppointInfo appointInfo);
}
