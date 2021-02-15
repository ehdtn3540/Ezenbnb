package com.guest.service;

import java.util.*;

import javax.servlet.http.*;

import com.guest.dao.GuestDAO;
import com.user.dto.*;

import controller.*;

public class GuestAccountService implements CommandAction{
	
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		System.out.println("GuestAccountService");
		System.out.println(request.getParameter("id"));
		
		//파라메터값(아이디)
		String id = request.getParameter("id");
		
		GuestDAO guestdao = new GuestDAO();
		
		//보내줄 값 : 이름
		String gName = guestdao.getGuestName(id);
		
		request.setAttribute("gId", id);
		request.setAttribute("gName", gName);
		System.out.println(gName);
		
		return "/user/guest/account-settings.jsp";
	}

}
