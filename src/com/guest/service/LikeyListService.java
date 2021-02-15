package com.guest.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.house.dao.HouseDAO;
import com.house.dto.LikeyDTO;

import controller.CommandAction;

public class LikeyListService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		int midx = Integer.parseInt(request.getParameter("midx"));
		
		HouseDAO dao = new HouseDAO();
		List<LikeyDTO> list = dao.getLikeyList(midx);
		
		request.setAttribute("list", list);
		
		return "user/guest/likey_list.jsp";
	}

}
