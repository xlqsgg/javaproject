package com.xlq.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;


import com.xlq.model.user;

@Service("UserService")
public interface UserService {
    int deleteByPrimaryKey(Long userid);

    int insert(user record);

    int insertSelective(user record);

    user selectByPrimaryKey(Long userid);

    int updateByPrimaryKeySelective(user record);

    int updateByPrimaryKey(user record);
    
    public user selectUser(user user);

    public boolean login(user user);

	user findByName(@Param("username")String username, @Param("password")String password) throws Exception;

}
