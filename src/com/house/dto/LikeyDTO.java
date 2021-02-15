package com.house.dto;

public class LikeyDTO {
	private int hidx;
	private String hname;
	private String hcatg;
	private String haddress;
	private String himage;
	private String hfacility;
	private int hbed;
	private int hbat;
	private int lidx; //좋아요 번호
	
	public LikeyDTO() {
		super();
	}
       //커밋용
	public LikeyDTO(int hidx, String hname, String hcatg, String haddress, String himage, String hfacility, int hbed,
			int hbat, int lidx) {
		super();
		this.hidx = hidx;
		this.hname = hname;
		this.hcatg = hcatg;
		this.haddress = haddress;
		this.himage = himage;
		this.hfacility = hfacility;
		this.hbed = hbed;
		this.hbat = hbat;
		this.lidx = lidx;
	}

	public int getHidx() {
		return hidx;
	}

	public void setHidx(int hidx) {
		this.hidx = hidx;
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getHcatg() {
		return hcatg;
	}

	public void setHcatg(String hcatg) {
		this.hcatg = hcatg;
	}

	public String getHaddress() {
		return haddress;
	}

	public void setHaddress(String haddress) {
		this.haddress = haddress;
	}

	public String getHimage() {
		return himage;
	}

	public void setHimage(String himage) {
		this.himage = himage;
	}

	public String getHfacility() {
		return hfacility;
	}

	public void setHfacility(String hfacility) {
		this.hfacility = hfacility;
	}

	public int getHbed() {
		return hbed;
	}

	public void setHbed(int hbed) {
		this.hbed = hbed;
	}

	public int getHbat() {
		return hbat;
	}

	public void setHbat(int hbat) {
		this.hbat = hbat;
	}

	public int getLidx() {
		return lidx;
	}

	public void setLidx(int lidx) {
		this.lidx = lidx;
	}
	
	
}
