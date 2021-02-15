package com.guest.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pay.dao.AccountDAO;
import com.pay.dto.AccountDTO;
import com.pay.dto.ReceiptDTO;
import com.pay.dto.ReservDTO;

import controller.CommandAction;

public class ReceiptService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		//해당 예약번호의 영수증 가져오기
		int aidx = Integer.parseInt(request.getParameter("aidx"));
		
		AccountDAO dao = new AccountDAO();
		List<ReceiptDTO> list = dao.getReceipt(aidx);
		
		request.setAttribute("list", list);
		
		System.out.println("ReservListService:"+list.toString());
		
		return "user/guest/receipt.jsp";
	}

}
