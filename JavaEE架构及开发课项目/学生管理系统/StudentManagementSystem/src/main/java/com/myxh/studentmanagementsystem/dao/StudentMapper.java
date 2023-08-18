package com.myxh.studentmanagementsystem.dao;

import com.myxh.studentmanagementsystem.bean.Student;
import com.myxh.studentmanagementsystem.bean.StudentExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author MYXH
 * @date 2023/6/4
 */
public interface StudentMapper
{
    long countByExample(StudentExample example);

    int deleteByExample(StudentExample example);

    int deleteByPrimaryKey(String id);

    int insert(Student record);

    int insertSelective(Student record);

    List<Student> selectByExample(StudentExample example);

    Student selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Student record, @Param("example") StudentExample example);

    int updateByExample(@Param("record") Student record, @Param("example") StudentExample example);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

    // 查询所有专业名
    List<String> selectAllMajors();

    List<String> getClassesByMajor(String major);
}
