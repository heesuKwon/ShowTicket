package com.kh.showticket.event.model.vo;

import java.sql.Date;

public class Discount {
	
	private String showId;
	private int disCountRate; 
	private Date disCountStartDate;
	private Date disCountEndDate;
	
	public Discount() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Discount(String showId, int disCountRate, Date disCountStartDate, Date disCountEndDate) {
		super();
		this.showId = showId;
		this.disCountRate = disCountRate;
		this.disCountStartDate = disCountStartDate;
		this.disCountEndDate = disCountEndDate;
	}

	public String getShowId() {
		return showId;
	}

	public void setShowId(String showId) {
		this.showId = showId;
	}

	public int getDisCountRate() {
		return disCountRate;
	}

	public void setDisCountRate(int disCountRate) {
		this.disCountRate = disCountRate;
	}

	public Date getDisCountStartDate() {
		return disCountStartDate;
	}

	public void setDisCountStartDate(Date disCountStartDate) {
		this.disCountStartDate = disCountStartDate;
	}

	public Date getDisCountEndDate() {
		return disCountEndDate;
	}

	public void setDisCountEndDate(Date disCountEndDate) {
		this.disCountEndDate = disCountEndDate;
	}

	@Override
	public String toString() {
		return "Discount [showId=" + showId + ", disCountRate=" + disCountRate + ", disCountStartDate="
				+ disCountStartDate + ", disCountEndDate=" + disCountEndDate + "]";
	}
	
	
	
	
}
