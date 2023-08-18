package com.myxh.studentmanagementsystem.bean;

import java.util.Date;

/**
 * @author MYXH
 * @date 2023/6/4
 */
public class Student
{
    private String id;
    private String studentName;
    private String idCard;
    private String phoneNumber;
    private Date startYear;
    private String studentSource;
    private String major;
    private String className;

    public String getId()
    {
        return id;
    }

    public void setId(String id)
    {
        this.id = id == null ? null : id.trim();
    }

    public String getStudentName()
    {
        return studentName;
    }

    public void setStudentName(String studentName)
    {
        this.studentName = studentName == null ? null : studentName.trim();
    }

    public String getIdCard()
    {
        return idCard;
    }

    public void setIdCard(String idCard)
    {
        this.idCard = idCard == null ? null : idCard.trim();
    }

    public String getPhoneNumber()
    {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber)
    {
        this.phoneNumber = phoneNumber == null ? null : phoneNumber.trim();
    }

    public Date getStartYear()
    {
        return startYear;
    }

    public void setStartYear(Date startYear)
    {
        this.startYear = startYear;
    }

    public String getStudentSource()
    {
        return studentSource;
    }

    public void setStudentSource(String studentSource)
    {
        this.studentSource = studentSource == null ? null : studentSource.trim();
    }

    public String getMajor()
    {
        return major;
    }

    public void setMajor(String major)
    {
        this.major = major == null ? null : major.trim();
    }

    public String getClassName()
    {
        return className;
    }

    public void setClassName(String className)
    {
        this.className = className == null ? null : className.trim();
    }
}
