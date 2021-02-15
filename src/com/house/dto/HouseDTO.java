package com.house.dto;

public class HouseDTO {
	private int hidx;
	private int midx;
	private String hname;
	private String hcatg;
	private String haddress;
	private String hphone;
	private String himage;
	private String hfacility; //시설
	private int hgrade;
	private int hbed;
	private int hbat;
	private int hperson;
	private int hprice;
	private int hutill;
	
	public HouseDTO() {
		super();
	}

	public HouseDTO(int hidx, int midx, String hname, String hcatg, String haddress, String hphone, String himage,
			String hfacility, int hgrade, int hbed, int hbat, int hperson, int hprice, int hutill) {
		super();
		this.hidx = hidx;
		this.midx = midx;
		this.hname = hname;
		this.hcatg = hcatg;
		this.haddress = haddress;
		this.hphone = hphone;
		this.himage = himage;
		this.hfacility = hfacility;
		this.hgrade = hgrade;
		this.hbed = hbed;
		this.hbat = hbat;
		this.hperson = hperson;
		this.hprice = hprice;
		this.hutill = hutill;
	}

	public int getHidx() {
		return hidx;
	}

	public void setHidx(int hidx) {
		this.hidx = hidx;
	}

	public int getMidx() {
		return midx;
	}

	public void setMidx(int midx) {
		this.midx = midx;
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

	public String getHphone() {
		return hphone;
	}

	public void setHphone(String hphone) {
		this.hphone = hphone;
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

	public int getHgrade() {
		return hgrade;
	}

	public void setHgrade(int hgrade) {
		this.hgrade = hgrade;
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

	public int getHperson() {
		return hperson;
	}

	public void setHperson(int hperson) {
		this.hperson = hperson;
	}

	public int getHprice() {
		return hprice;
	}

	public void setHprice(int hprice) {
		this.hprice = hprice;
	}

	public int getHutill() {
		return hutill;
	}

	public void setHutill(int hutill) {
		this.hutill = hutill;
	}
	
}
