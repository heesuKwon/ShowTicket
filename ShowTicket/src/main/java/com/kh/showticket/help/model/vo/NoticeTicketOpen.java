package com.kh.showticket.help.model.vo;

import java.sql.Date;
import lombok.Data;

@Data
public class NoticeTicketOpen {

	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private Date noticeEnrollDate;
	private String noticeCategory;
	private int notice_count;
	private String playName;
	private String playOpen;
	private String playPlace;
	private String playPoster;
	
	
	
}
