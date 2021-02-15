package com.guest.service;

import java.util.*;

import javax.servlet.http.*;

import com.guest.dao.GuestDAO;
import com.user.dto.*;

import controller.*;

public class GuestPersListService implements CommandAction{
	
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		System.out.println("GuestPersListService");
		System.out.println(request.getParameter("id"));
		
		//파라메터값(아이디)
		String id = request.getParameter("id");
		
		GuestDAO dao = new GuestDAO();
		
		//보내줄 값 : dto
		UserDTO dto = dao.getUserPers(id);
		
		request.setAttribute("dto", dto);
		
		return "/user/guest/personal-info.jsp";
	}

}
