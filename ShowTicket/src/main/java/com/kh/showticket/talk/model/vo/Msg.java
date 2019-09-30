package com.kh.showticket.talk.model.vo;

import lombok.Data;

@Data
public class Msg {
	private long chatNo;
	private String chatId;
	private String memberId;
	private String msg;
	private long time;
	private MsgType type;
}
