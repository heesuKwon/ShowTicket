package com.kh.showticket.coupon.model.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.kh.showticket.coupon.model.dao.CouponDAO;
import com.kh.showticket.coupon.model.vo.Coupon;

@Transactional(propagation=Propagation.REQUIRED,
isolation=Isolation.READ_COMMITTED,
rollbackFor=Exception.class)
@Service
public class CouponServiceImpl implements CouponService {

	@Autowired
	CouponDAO couponDAO;
	
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	@Override
	public List<Coupon> selectCouponList() {
		return couponDAO.selectCouponList();
	}
	
	@Override
	public Coupon selectCoupon(int couponNo) {
		return couponDAO.selectCoupon(couponNo);
	}
	
	@Override
	public void couponDownload(int couponNo, String memberLoggedIn) {
		Coupon coupon = selectCoupon(couponNo);
		couponDAO.couponDownload(coupon, memberLoggedIn);
	}

	@Override
	public List<Map<String, String>> selectMyCouponList(String memberLoggedIn) {
		return couponDAO.selectMyCouponList(memberLoggedIn);
	}


	

	

}
