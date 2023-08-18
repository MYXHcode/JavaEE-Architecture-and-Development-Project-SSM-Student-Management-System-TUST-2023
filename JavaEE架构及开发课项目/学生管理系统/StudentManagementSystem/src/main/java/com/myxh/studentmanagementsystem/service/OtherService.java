package com.myxh.studentmanagementsystem.service;

import com.myxh.studentmanagementsystem.bean.Student;
import com.myxh.studentmanagementsystem.bean.StudentExample;
import com.myxh.studentmanagementsystem.dao.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author MYXH
 * @date 2023/6/4
 */
@Service
public class OtherService
{
    @Autowired
    private StudentMapper studentMapper;

    public List<String> getAllMajors()
    {
        return studentMapper.selectAllMajors();
    }

    public List<String> getClassesByMajor(String major)
    {
        return studentMapper.getClassesByMajor(major);
    }

    public List<String> getStudentIdsByClass(String className, ArrayList<String> list)
    {
        StudentExample example = new StudentExample();
        example.createCriteria().andClassNameEqualTo(className).andIdIn(list);
        List<Student> students = studentMapper.selectByExample(example);
        ArrayList<String> ids = new ArrayList<>();

        for (Student student : students)
        {
            ids.add(student.getId());
        }

        return ids;
    }
}
