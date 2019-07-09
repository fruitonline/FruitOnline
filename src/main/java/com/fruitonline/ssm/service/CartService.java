package com.fruitonline.ssm.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fruitonline.ssm.dao.CartMapper;
import com.fruitonline.ssm.vo.CartProduct;


@Service
public class CartService {

	@Autowired
	CartMapper cartMapper;
	private static Logger log = Logger.getLogger(CartService.class);
	public List<CartProduct> CartselectAll() {
		log.error("/n"+"Cart selectAll:");
		return cartMapper.selectAll();
	}
	public void CartDelete(String name){
		log.error("/n"+"Cart CartDelete:");
		cartMapper.cartDelete(name);
	}
	public void AddToCart(String name){
		log.error("/n"+"Cart AddToCart:");
		cartMapper.AddToCart(name);
	}
}
