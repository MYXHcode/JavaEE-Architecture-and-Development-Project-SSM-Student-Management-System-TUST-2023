package com.myxh.studentmanagementsystem.dao;

import com.myxh.studentmanagementsystem.bean.UtSecretary;
import com.myxh.studentmanagementsystem.bean.UtSecretaryExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author MYXH
 * @date 2023/6/4
 */
public interface UtSecretaryMapper
{
    long countByExample(UtSecretaryExample example);

    int deleteByExample(UtSecretaryExample example);

    int deleteByPrimaryKey(String id);

    int insert(UtSecretary record);

    int insertSelective(UtSecretary record);

    List<UtSecretary> selectByExample(UtSecretaryExample example);

    UtSecretary selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") UtSecretary record, @Param("example") UtSecretaryExample example);

    int updateByExample(@Param("record") UtSecretary record, @Param("example") UtSecretaryExample example);

    int updateByPrimaryKeySelective(UtSecretary record);

    int updateByPrimaryKey(UtSecretary record);
}
