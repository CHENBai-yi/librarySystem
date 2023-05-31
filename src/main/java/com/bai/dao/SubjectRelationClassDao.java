package com.bai.dao;

import com.bai.pojo.SubjectRelationClass;

public interface SubjectRelationClassDao {
    int deleteByPrimaryKey(Long id);

    int insert(SubjectRelationClass record);

    int insertSelective(SubjectRelationClass record);

    SubjectRelationClass selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SubjectRelationClass record);

    int updateByPrimaryKey(SubjectRelationClass record);
}