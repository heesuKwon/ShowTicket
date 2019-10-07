package com.kh.showticket.event.model.dao;

import java.util.List;


import com.kh.showticket.event.model.vo.EventComment;

public interface EventCommentDAO {

	int insertComment(EventComment eventComment);

	List<EventComment> eCommentList(int eventNo);

	int eCommentDelete(int commentNo);

	/* EventComment selectOneEventJoin(int eventNo); */

}
