package com.guest.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.house.dao.HouseDAO;

import controller.CommandAction;

public class LikeyDelService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		int lidx = Integer.parseInt(request.getParameter("lidx"));
		
		HouseDAO dao = new HouseDAO();
		dao.deleteLikey(lidx);
		
		return "user/guest/likeydelresult.jsp";
	}

}
