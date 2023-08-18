package com.myxh.studentmanagementsystem.dao;

import com.myxh.studentmanagementsystem.bean.UStudent;
import com.myxh.studentmanagementsystem.bean.UStudentExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author MYXH
 * @date 2023/6/4
 */
public interface UStudentMapper
{
    long countByExample(UStudentExample example);

    int deleteByExample(UStudentExample example);

    int deleteByPrimaryKey(String id);

    int insert(UStudent record);

    int insertSelective(UStudent record);

    List<UStudent> selectByExample(UStudentExample example);

    UStudent selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") UStudent record, @Param("example") UStudentExample example);

    int updateByExample(@Param("record") UStudent record, @Param("example") UStudentExample example);

    int updateByPrimaryKeySelective(UStudent record);

    int updateByPrimaryKey(UStudent record);
}
