package com.kh.showticket.event.model.service;

import java.util.List;

import com.kh.showticket.event.model.vo.Discount;

public interface DiscountService {

	int insertAddSale(Discount discount);

	int checkCnt();

	int deleteAddSale();

	List<Discount> selectdcList();

	

}
