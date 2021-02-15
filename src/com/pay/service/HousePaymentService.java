package com.pay.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pay.dao.AccountDAO;
import com.pay.dto.AccountDTO;

import controller.CommandAction;

public class HousePaymentService implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		String card = request.getParameter("card");
		String cardnum = request.getParameter("cardnum");
		String exdate = request.getParameter("exdate");
		String cvv = request.getParameter("cvv");
		String postnum = request.getParameter("postnum");
		String area = request.getParameter("area");
		
		int midx = Integer.parseInt(request.getParameter("midx"));
		int hidx = Integer.parseInt(request.getParameter("hidx"));
		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");
		int person = Integer.parseInt(request.getParameter("person"));
		int price = Integer.parseInt(request.getParameter("price"));
		
		// 데이터 저장
		AccountDTO dto = new AccountDTO();
		dto.setAcard(card);
		dto.setAcardnum(cardnum);
		dto.setAexdate(exdate);
		dto.setAcvv(cvv);
		dto.setApostnum(postnum);
		dto.setAarea(area);
		
		dto.setMidx(midx);
		dto.setHidx(hidx);
		dto.setAcheckin(checkin);
		dto.setAcheckout(checkout);
		dto.setAperson(person);
		dto.setAprice(price);
		
		AccountDAO AccountDao = new AccountDAO();
		int n = AccountDao.AccountInsert(dto);
		
		request.setAttribute("n", n);
		
		return "/main/main.jsp";
	}

}
