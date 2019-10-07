package com.kh.showticket.coupon.model.service;

import java.util.List;
import java.util.Map;

import com.kh.showticket.coupon.model.vo.Coupon;

public interface CouponService {

	List<Coupon> selectCouponList();
	
	Coupon selectCoupon(int couponNo);

	void couponDownload(int couponNo, String memberLoggedIn);

	List<Map<String, String>> selectMyCouponList(String memberLoggedIn);

	int insertCouponAdd(Map<String, Object> addMap);

}
