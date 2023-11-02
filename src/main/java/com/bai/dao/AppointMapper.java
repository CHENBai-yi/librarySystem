package com.bai.dao;

import com.bai.pojo.Appoint;
import com.bai.pojo.AppointInfo;
import com.bai.pojo.RoomInfo;

import java.util.List;

public interface AppointMapper {

    // 添加预约信息
    void addAppointInfo(AppointInfo appointInfo);

    // 获取预约信息
    AppointInfo queryInfo();

    // 获取座位书本等信息
    List<RoomInfo> queryRoomInfo();

    // 添加预约的记录
    void addAppointTake(Appoint appoint);

    // 查看个人预约记录
    List<Appoint> queryAppointTake(long readerId);

    // 获取所有的预约信息
    List<Appoint> queryAllAppoint();

    // 删除日志
    void delAppoint(long appointId);

    // 更新预约人数
    void updateAppointNum();

    // 修改预约信息
    void updateAppointInfo(AppointInfo appointInfo);

    List<AppointInfo> queryInfoList();
}
