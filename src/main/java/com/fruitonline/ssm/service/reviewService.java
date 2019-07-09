package com.fruitonline.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fruitonline.ssm.dao.reviewMapper;
import com.fruitonline.ssm.vo.review;

@Service
public class reviewService {
	@Autowired
	reviewMapper reviewMapper;
	
    public void commitreview(String review){	
		reviewMapper.commitreview(review);
	}

}
