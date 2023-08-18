package com.myxh.studentmanagementsystem.service;

import com.myxh.studentmanagementsystem.bean.TrainingProgram;
import com.myxh.studentmanagementsystem.bean.TrainingProgramExample;
import com.myxh.studentmanagementsystem.dao.TrainingProgramMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author MYXH
 * @date 2023/6/4
 */
@Service
public class TrainingProgramService
{
    @Autowired
    private TrainingProgramMapper trainingProgramMapper;

    public List<TrainingProgram> getTrainProgramByMajor(String major)
    {
        List<String> list = new ArrayList<>();
        list.add("必修课");
        list.add(major);
        TrainingProgramExample example = new TrainingProgramExample();
        example.createCriteria().andCourseMajorIn(list);

        return trainingProgramMapper.selectByExample(example);
    }

    public List<TrainingProgram> getTrainProgramByCourseIds(List<Integer> ids)
    {
        TrainingProgramExample example = new TrainingProgramExample();
        example.createCriteria().andCourseIdIn(ids);

        return trainingProgramMapper.selectByExample(example);
    }

    public List<TrainingProgram> getTeachingCoursesByName(String teacherName)
    {
        TrainingProgramExample example = new TrainingProgramExample();
        example.createCriteria().andCourseTeacherEqualTo(teacherName);

        return trainingProgramMapper.selectByExample(example);
    }

    public void updateTeachingCourse(TrainingProgram course)
    {
        trainingProgramMapper.updateByPrimaryKeySelective(course);
    }

    public List<TrainingProgram> getAllTrainProgram()
    {
        return trainingProgramMapper.selectByExample(null);
    }

    public void addTrainProgram(TrainingProgram trainingProgram)
    {
        trainingProgramMapper.insertSelective(trainingProgram);
    }

    public void UpdateTrainProgram(TrainingProgram trainingProgram)
    {
        trainingProgramMapper.updateByPrimaryKeySelective(trainingProgram);
    }

    public void deleteTrainProgramByCourseId(Integer courseId)
    {
        trainingProgramMapper.deleteByPrimaryKey(courseId);
    }

    public List<String> getCourseNamesByMajor(String major)
    {
        return trainingProgramMapper.getCourseNamesByMajor(major);
    }
}
