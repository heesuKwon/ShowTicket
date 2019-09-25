package com.kh.showticket.help.model.vo;

import java.sql.Date;

public class NoticeTicketOpen {

	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private Date noticeEnrollDate;
	private String noticeCategory;
	private int notice_count;
	
	public NoticeTicketOpen() {}

	public NoticeTicketOpen(int noticeNo, String noticeTitle, String noticeContent, Date noticeEnrollDate,
			String noticeCategory,int notice_count) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeEnrollDate = noticeEnrollDate;
		this.notice_count = notice_count;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Date getNoticeEnrollDate() {
		return noticeEnrollDate;
	}

	public void setNoticeEnrollDate(Date noticeEnrollDate) {
		this.noticeEnrollDate = noticeEnrollDate;
	}

	public int getNotice_count() {
		return notice_count;
	}

	public void setNotice_count(int notice_count) {
		this.notice_count = notice_count;
	}

	public String getNoticeCategory() {
		return noticeCategory;
	}

	public void setNoticeCategory(String noticeCategory) {
		this.noticeCategory = noticeCategory;
	}

	@Override
	public String toString() {
		return "NoticeTicketOpen [noticeNo=" + noticeNo + ", noticeTitle=" + noticeTitle + ", noticeContent="
				+ noticeContent + ", noticeEnrollDate=" + noticeEnrollDate + ", noticeCategory="+noticeCategory + ", notice_count=" + notice_count + "]";
	}
	
	
	
}
