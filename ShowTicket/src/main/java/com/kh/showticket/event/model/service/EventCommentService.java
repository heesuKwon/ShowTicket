package com.kh.showticket.event.model.service;

import java.util.List;

import com.kh.showticket.event.model.vo.EventComment;

public interface EventCommentService {

	int insertComment(EventComment eventComment);

	List<EventComment> eCommentList(int eventNo);

}
