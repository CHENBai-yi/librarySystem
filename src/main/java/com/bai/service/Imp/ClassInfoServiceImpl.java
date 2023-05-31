package com.bai.service.Imp;

import com.bai.dao.ClassInfoDao;
import com.bai.pojo.ClassInfo;
import com.bai.service.ClassInfoService;
import com.bai.utils.constants.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Author:XY
 * PACkAGE:com.bai.service.Imp
 * Date:2023/5/1 10:19
 */
@Service("图书分类业务相关")
public class ClassInfoServiceImpl implements ClassInfoService {
    @Autowired
    private ClassInfoDao classInfoDao;

    @Override
    public List<ClassInfo> selectClassInfoList() {
        return classInfoDao.selectAll(Constants.CLASS_INFO_LIST);
    }
}
