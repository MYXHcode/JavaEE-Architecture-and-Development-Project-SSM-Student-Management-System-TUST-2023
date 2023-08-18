package com.myxh.studentmanagementsystem.dao;

import com.myxh.studentmanagementsystem.bean.UTeacher;
import com.myxh.studentmanagementsystem.bean.UTeacherExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author MYXH
 * @date 2023/6/4
 */
public interface UTeacherMapper
{
    long countByExample(UTeacherExample example);

    int deleteByExample(UTeacherExample example);

    int deleteByPrimaryKey(String id);

    int insert(UTeacher record);

    int insertSelective(UTeacher record);

    List<UTeacher> selectByExample(UTeacherExample example);

    UTeacher selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") UTeacher record, @Param("example") UTeacherExample example);

    int updateByExample(@Param("record") UTeacher record, @Param("example") UTeacherExample example);

    int updateByPrimaryKeySelective(UTeacher record);

    int updateByPrimaryKey(UTeacher record);
}
