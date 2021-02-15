package com.user.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.dao.UserDAO;
import com.user.dto.UserDTO;

import controller.CommandAction;

public class LogoutService implements CommandAction{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		HttpSession session=request.getSession();
		UserDTO entity = (UserDTO) session.getAttribute("logOK");
		
		if (entity != null) {
			session.removeAttribute("logOK"); // or session.invalidate();
			session.removeAttribute("logFail"); // 로그인 실패문구 삭제
			//로그인 관련 쿠키 삭제
		    Cookie[] cookies = request.getCookies();
		    if(cookies!=null){
		        for(Cookie tempCookie : cookies){
		            if(tempCookie.getName().equals("cid")){
		                tempCookie.setMaxAge(0);
		                tempCookie.setPath("/");
		                response.addCookie(tempCookie);
		            }
		        }
		    }
		}
		return "main/main.jsp";
	}
}
