package com.xlq.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.xlq.model.product;


@Service("ProductService")
public interface ProductService {
	
    int deleteByPrimaryKey(Integer productId);

    int insert(product record);

    int insertSelective(product record);

    product selectByPrimaryKey(Integer productId);

    int updateByPrimaryKeySelective(product record);

    int updateByPrimaryKey(product record);
    
	product selectById(@Param("productId")Integer productId) throws Exception;
}
