package com.message.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.message.dao.MessageDAO;
import com.message.dto.ChatroomDTO;
import com.message.dto.MessageDTO;

import controller.CommandAction;

public class MessageInsertService implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");

		String mcontent = request.getParameter("mcontent");
		String userid = request.getParameter("userid");
		int chatidx = Integer.parseInt(request.getParameter("chatidx"));

		// save DATA
		MessageDTO dto = new MessageDTO();
		dto.setMcontent(mcontent);
		dto.setUserid(userid);
		dto.setChatidx(chatidx);

		// insertDB
		MessageDAO dao = new MessageDAO();

		// dao 성공 1, 실패 0
		int n = dao.insertMessage(dto);
		request.setAttribute("n", n);
		request.setAttribute("chatidx", chatidx);
		
		return "user/guest/msginsertresult.jsp";
	}
}
