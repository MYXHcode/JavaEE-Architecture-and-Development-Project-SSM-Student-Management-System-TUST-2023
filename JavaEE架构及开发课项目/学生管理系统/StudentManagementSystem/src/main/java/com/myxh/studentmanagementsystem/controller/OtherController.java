package com.myxh.studentmanagementsystem.controller;

import com.myxh.studentmanagementsystem.bean.Msg;
import com.myxh.studentmanagementsystem.service.OtherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author MYXH
 * @date 2023/6/4
 */
@Controller
public class OtherController
{
    @Autowired
    private OtherService otherService;

    // 获取所有专业名
    @ResponseBody
    @RequestMapping(value = "/majors", method = RequestMethod.GET)
    public Msg getAllMajors()
    {
        List<String> majors = otherService.getAllMajors();

        return Msg.success().add("majors", majors);
    }

    // 通过专业获取所有班级
    @ResponseBody
    @RequestMapping(value = "/classes/{major}", method = RequestMethod.GET)
    public Msg getClassesByMajor(@PathVariable("major") String major)
    {
        List<String> classes = otherService.getClassesByMajor(major);

        return Msg.success().add("classes", classes);
    }

    // 获取指定班级的学号
    @ResponseBody
    @RequestMapping(value = "/stus/{student_ids}", method = RequestMethod.GET)
    public Msg getStudentIdsByClass(@PathVariable("student_ids") String student_ids)
    {
        String[] strings = student_ids.split("-");

        ArrayList<String> list = new ArrayList<>(Arrays.asList(strings).subList(1, strings.length));

        List<String> ids = otherService.getStudentIdsByClass(strings[0], list);

        return Msg.success().add("ids", ids);
    }
}
