package com.house.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.house.dao.HouseDAO;
import com.house.dto.HouseDTO;

import controller.CommandAction;

public class HouseViewService implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		response.setCharacterEncoding("UTF-8");
		
		String hidx = request.getParameter("hidx");
		
		HouseDAO dao = new HouseDAO(); 
		
		HouseDTO dto = dao.getHouseOne(hidx);
		request.setAttribute("dto", dto);
		
		return "house/house_view.jsp";
	}

}
