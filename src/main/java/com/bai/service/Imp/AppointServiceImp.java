package com.bai.service.Imp;

import com.bai.dao.AppointMapper;
import com.bai.pojo.Appoint;
import com.bai.pojo.AppointInfo;
import com.bai.pojo.RoomInfo;
import com.bai.service.AppointService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AppointServiceImp implements AppointService {

    @Autowired
    private AppointMapper appointMapper;

    @Override
    public void addAppointInfo(AppointInfo appointInfo) {
        appointMapper.addAppointInfo(appointInfo);
    }

    @Override
    public AppointInfo queryInfo() {
        AppointInfo appointInfo = appointMapper.queryInfo();
        return appointInfo;
    }

    @Override
    public List<RoomInfo> queryRoomInfo() {
        List<RoomInfo> roomInfos = appointMapper.queryRoomInfo();
        return roomInfos;
    }

    @Override
    public void addAppointTake(Appoint appoint) {
        appointMapper.updateAppointNum();
        appointMapper.addAppointTake(appoint);
    }

    @Override
    public List<Appoint> queryAppointTake(long readerId) {
        List<Appoint> appoints = appointMapper.queryAppointTake(readerId);
        return appoints;
    }

    @Override
    public List<Appoint> queryAllAppoint() {
        List<Appoint> appoints = appointMapper.queryAllAppoint();
        return appoints;
    }

    @Override
    public void delAppoint(long appointId) {
        appointMapper.delAppoint(appointId);
    }

    @Override
    public void updateAppointInfo(AppointInfo appointInfo) {
        appointMapper.updateAppointInfo(appointInfo);
    }
}
