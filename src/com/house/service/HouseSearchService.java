package com.house.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.house.dao.HouseDAO;
import com.house.dto.HouseDTO;

import controller.CommandAction;

public class HouseSearchService implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		String search = request.getParameter("search");
		
		HouseDAO dao = new HouseDAO();
		List<HouseDTO> list = dao.getHouseSearch(search);
		
		request.setAttribute("list", list);
		
		return "house/house_list.jsp";
	}

}