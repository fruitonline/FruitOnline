package com.fruitonline.ssm.dao;


import java.util.List;

import com.fruitonline.ssm.vo.wishProduct;

public interface wishMapper {

	public List<wishProduct> selectAll();
	public void AddToWish(String name);	
	public void wishDelete(String name);
}
