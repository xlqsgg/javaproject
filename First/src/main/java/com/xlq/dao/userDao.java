package com.xlq.dao;

import org.apache.ibatis.annotations.Param;

import com.xlq.model.user;

public interface userDao {
    int deleteByPrimaryKey(Long userid);

    int insert(user record);

    int insertSelective(user record);

    user selectByPrimaryKey(Long userid);

    int updateByPrimaryKeySelective(user record);

    int updateByPrimaryKey(user record);
    
    public user selectUser(user user);
    
    user findByName(@Param("username")String username, @Param("password")String password) throws Exception;

}