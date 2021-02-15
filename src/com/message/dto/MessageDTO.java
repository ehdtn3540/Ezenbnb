package com.message.dto;

public class MessageDTO {
	private int msgidx;
	private String mcontent;
	private String mtime;
	private String userid;
	private int chatidx;
	
	public MessageDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MessageDTO(int msgidx, String mcontent, String mtime, String userid, int chatidx) {
		super();
		this.msgidx = msgidx;
		this.mcontent = mcontent;
		this.mtime = mtime;
		this.userid = userid;
		this.chatidx = chatidx;
	}

	public int getMsgidx() {
		return msgidx;
	}

	public void setMsgidx(int msgidx) {
		this.msgidx = msgidx;
	}

	public String getMcontent() {
		return mcontent;
	}

	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}

	public String getMtime() {
		return mtime;
	}

	public void setMtime(String mtime) {
		this.mtime = mtime;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getChatidx() {
		return chatidx;
	}

	public void setChatidx(int chatidx) {
		this.chatidx = chatidx;
	}

	
}
