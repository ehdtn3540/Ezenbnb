package com.host.service;

import java.util.*;

import javax.servlet.http.*;

import com.guest.dao.GuestDAO;
import com.host.dao.HostingDAO;
import com.pay.dto.AccountDTO;
import com.user.dto.*;

import controller.*;

public class ApprovalService implements CommandAction{
	
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		System.out.println("GuestPersonalModifyService");
		request.setCharacterEncoding("UTF-8");
		
		//파라메터값(aidx) 예약번호
		
		int aidx = Integer.parseInt(request.getParameter("aidx"));
		System.out.println(aidx);
		
		AccountDTO dto = new AccountDTO();
		dto.setAidx(aidx);
		
		HostingDAO dao = new HostingDAO();
		int n = dao.apprvUpdate(dto);
		
		request.setAttribute("n", n);
		System.out.println("n :"+n);
		
		return "/host/approvalResult.jsp";
	}

}
