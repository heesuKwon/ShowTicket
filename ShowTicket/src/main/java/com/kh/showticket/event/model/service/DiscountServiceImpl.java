package com.kh.showticket.event.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.showticket.event.model.dao.DiscountDAO;

@Service
public class DiscountServiceImpl implements DiscountService {

	@Autowired 
	DiscountDAO discountDAO; 
}
