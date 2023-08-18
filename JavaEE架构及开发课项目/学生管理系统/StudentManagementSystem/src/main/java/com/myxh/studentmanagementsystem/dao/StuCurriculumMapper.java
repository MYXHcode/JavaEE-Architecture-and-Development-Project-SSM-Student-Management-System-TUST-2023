package com.myxh.studentmanagementsystem.dao;

import com.myxh.studentmanagementsystem.bean.StuCurriculum;
import com.myxh.studentmanagementsystem.bean.StuCurriculumExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author MYXH
 * @date 2023/6/4
 */
public interface StuCurriculumMapper
{
    long countByExample(StuCurriculumExample example);

    int deleteByExample(StuCurriculumExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(StuCurriculum record);

    int insertSelective(StuCurriculum record);

    List<StuCurriculum> selectByExample(StuCurriculumExample example);

    StuCurriculum selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") StuCurriculum record, @Param("example") StuCurriculumExample example);

    int updateByExample(@Param("record") StuCurriculum record, @Param("example") StuCurriculumExample example);

    int updateByPrimaryKeySelective(StuCurriculum record);

    int updateByPrimaryKey(StuCurriculum record);

    void updateCourseGradeIsNull(String courseName, String stuId);
}
