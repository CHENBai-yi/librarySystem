package com.bai.service.Imp;

import com.bai.dao.IpInfoDao;
import com.bai.pojo.IpInfo;
import com.bai.service.LogService;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.io.Resources;
import org.lionsoul.ip2region.xdb.Searcher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.ByteArrayOutputStream;

/**
 * Author:XY
 * PACkAGE:com.bai.service.Imp
 * Date:2023/10/29 17:47
 */
@Service
@Slf4j
public class LogServiceImp implements LogService {
    private final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    @Autowired
    private IpInfoDao ipInfoDao;

    @Override
    public void logingLog(String ip, String errorMsg) {
        try {
            if (byteArrayOutputStream.size() == 0) {
                String ip2region = "ip2region.xdb";
                byte[] ip2regions = Searcher.loadContentFromFile(Resources.getResourceURL(ip2region).getPath());
                byteArrayOutputStream.write(ip2regions);
            }
            Searcher searcher = Searcher.newWithBuffer(byteArrayOutputStream.toByteArray());
            String search = searcher.search(ip);
            String[] split = search.split("\\|");
            IpInfo ipInfo = new IpInfo();
            ipInfo.setIpAddress(ip);
            ipInfo.setCountry(split[0]);
            ipInfo.setRegion(split[1]);
            ipInfo.setProvince(split[2]);
            ipInfo.setCity(split[3]);
            ipInfo.setIsp(split[4]);
            ipInfoDao.insert(ipInfo);
        } catch (Exception e) {
            log.debug("LogServiceImp 28line--->登录ip解析出错");
        }
    }
}
