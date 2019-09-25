package com.kh.showticket.coupon.model.dao;

import java.util.List;
import java.util.Map;

import com.kh.showticket.coupon.model.vo.Coupon;

public interface CouponDAO {

	List<Coupon> selectCouponList();

	void couponDownload(Coupon coupon, String memberLoggedIn);

	Coupon selectCoupon(int couponNo);

	List<Map<String, String>> selectMyCouponList(String memberLoggedIn);

}