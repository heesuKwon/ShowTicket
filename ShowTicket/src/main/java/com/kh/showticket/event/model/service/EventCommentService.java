package com.kh.showticket.event.model.service;

import java.util.List;

import com.kh.showticket.event.model.vo.Event;
import com.kh.showticket.event.model.vo.EventComment;

public interface EventCommentService {

	int insertComment(EventComment eventComment);

	List<EventComment> eCommentList(int eventNo);

	int eCommentDelete(int commentNo);

	/* EventComment selectOneEventJoin(int eventNo); */

	

}
