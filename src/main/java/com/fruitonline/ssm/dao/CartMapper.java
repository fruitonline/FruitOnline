package com.fruitonline.ssm.dao;

import java.util.List;

import com.fruitonline.ssm.vo.CartProduct;

public interface CartMapper {

	public List<CartProduct> selectAll();
	public void cartDelete(String name);
	public void AddToCart(String name);
	
}
