package com.category.dto;

public class CategoryDTO {
	private int cidx;
	private String cname;

	public CategoryDTO() {
		super();
	}

	public CategoryDTO(int cidx, String cname) {
		super();
		this.cidx = cidx;
		this.cname = cname;
	}

	public int getCidx() {
		return cidx;
	}

	public void setCidx(int cidx) {
		this.cidx = cidx;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}
}
