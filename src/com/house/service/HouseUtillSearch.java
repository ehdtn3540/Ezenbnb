package com.house.service;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.house.dao.HouseDAO;
import com.house.dto.HouseDTO2;

import controller.CommandAction;

public class HouseUtillSearch implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		String utill = request.getParameter("utill");

		HouseDAO dao = new HouseDAO();
		List<HouseDTO2> list = dao.getHouseUtillList(utill);
		
		request.setAttribute("list", list);
		
		return "house/house_list.jsp";
	}

}
