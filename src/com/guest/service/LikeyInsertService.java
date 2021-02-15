package com.guest.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.house.dao.HouseDAO;
import com.house.dto.LikeyDTO;
import com.house.dto.LikeyDTO2;

import controller.CommandAction;

public class LikeyInsertService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		int hidx = Integer.parseInt(request.getParameter("hidx"));
		int midx = Integer.parseInt(request.getParameter("midx"));
		
		System.out.println("hidx/midx:"+hidx+"/"+midx);
		
		LikeyDTO2 dto = new LikeyDTO2();
		dto.setHidx(hidx);
		dto.setMidx(midx);
		
		HouseDAO dao = new HouseDAO();
		int n = dao.insertLikey(dto);
		request.setAttribute("n", n);
		System.out.println("성공여부 n:" + n);
		
		return "user/guest/likeyinsertresult.jsp";
	}

}
