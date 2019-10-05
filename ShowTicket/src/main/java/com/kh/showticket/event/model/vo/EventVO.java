package com.kh.showticket.event.model.vo;

import java.sql.Date;
import java.util.List;

public class EventVO extends Event{
	private List<EventAttachment> eattachList;

	public EventVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EventVO(int eventNo, String eventTitle, String eventContent, Date eventStartDate, Date eventEndDate,
			Date announcementDate, String eventStatus, Date eventDetailDate, String eventTimeMen, String showId,
			String eventKind) {
		super(eventNo, eventTitle, eventContent, eventStartDate, eventEndDate, announcementDate, eventStatus, eventDetailDate,
				eventTimeMen, showId, eventKind);
		// TODO Auto-generated constructor stub
	}

	public List<EventAttachment> getEattachList() {
		return eattachList;
	}

	public void setEattachList(List<EventAttachment> eattachList) {
		this.eattachList = eattachList;
	}

	@Override
	public String toString() {
		return "EventVO [eattachList=" + eattachList + "]";
	}
	
	
	

}
