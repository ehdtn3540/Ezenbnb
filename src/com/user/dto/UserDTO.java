package com.user.dto;

public class UserDTO {
	private int uidx;
	private String userid;
	private String upw;
	private String uname;
	private String uphone;
	private String uaddress;
	private String uemerg;
	private int utype;
	private String ubirth;
	private String urdate;
	private int udrop;

	public UserDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserDTO(String userid, String upw) {
		super();
		this.userid = userid;
		this.upw = upw;
	}

	public int getUidx() {
		return uidx;
	}

	public void setUidx(int uidx) {
		this.uidx = uidx;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUpw() {
		return upw;
	}

	public void setUpw(String upw) {
		this.upw = upw;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUphone() {
		return uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	public String getUaddress() {
		return uaddress;
	}

	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}

	public String getUemerg() {
		return uemerg;
	}

	public void setUemerg(String uemerg) {
		this.uemerg = uemerg;
	}

	public int getUtype() {
		return utype;
	}

	public void setUtype(int utype) {
		this.utype = utype;
	}

	public String getUbirth() {
		return ubirth;
	}

	public void setUbirth(String ubirth) {
		this.ubirth = ubirth;
	}

	public String getUrdate() {
		return urdate;
	}

	public void setUrdate(String urdate) {
		this.urdate = urdate;
	}

	public int getUdrop() {
		return udrop;
	}

	public void setUdrop(int udrop) {
		this.udrop = udrop;
	}

}
