package com.guest.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pay.dao.AccountDAO;
import com.pay.dto.AccountDTO;
import com.pay.dto.ReservDTO;

import controller.CommandAction;

public class ReservListService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		int midx = Integer.parseInt(request.getParameter("midx"));
		
		AccountDAO dao = new AccountDAO();
		List<ReservDTO> list = dao.getReserveList(midx);
		
		request.setAttribute("list", list);
		
		System.out.println("ReservListService:"+list.toString());
		
		return "user/guest/travel.jsp";
	}

}
