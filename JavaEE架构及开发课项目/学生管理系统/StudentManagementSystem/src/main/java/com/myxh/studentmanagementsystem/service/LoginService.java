package com.myxh.studentmanagementsystem.service;

import com.myxh.studentmanagementsystem.bean.Student;
import com.myxh.studentmanagementsystem.bean.UStudent;
import com.myxh.studentmanagementsystem.bean.UTeacher;
import com.myxh.studentmanagementsystem.bean.UtSecretary;
import com.myxh.studentmanagementsystem.dao.StudentMapper;
import com.myxh.studentmanagementsystem.dao.UStudentMapper;
import com.myxh.studentmanagementsystem.dao.UTeacherMapper;
import com.myxh.studentmanagementsystem.dao.UtSecretaryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author MYXH
 * @date 2023/6/4
 */
@Service
public class LoginService
{
    @Autowired
    private UStudentMapper uStudentMapper;
    @Autowired
    private UTeacherMapper uTeacherMapper;
    @Autowired
    private UtSecretaryMapper utSecretaryMapper;
    @Autowired
    private StudentMapper studentMapper;

    public UStudent getUserInfo(String id)
    {
        return uStudentMapper.selectByPrimaryKey(id);
    }

    public Student getUsernameById(String id)
    {
        return studentMapper.selectByPrimaryKey(id);
    }

    public UTeacher getTeacherInfo(String id)
    {
        return uTeacherMapper.selectByPrimaryKey(id);
    }

    public UtSecretary getSecretaryInfo(String id)
    {
        return utSecretaryMapper.selectByPrimaryKey(id);
    }
}
