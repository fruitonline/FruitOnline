package com.fruitonline.ssm.dao;


import java.util.List;

import com.fruitonline.ssm.vo.product;

public interface productMapper {
	public List<product> selectAllproduct();
	public List<product> forAllproduct();
	public List<product> searchproduct(String keyword);
}
