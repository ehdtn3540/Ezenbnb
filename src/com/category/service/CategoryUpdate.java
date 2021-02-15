package com.category.service;

import javax.servlet.http.*;

import com.category.dao.*;
import com.category.dto.*;

import controller.*;

public class CategoryUpdate implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		int id = Integer.parseInt(request.getParameter("cidx"));
		String cname = request.getParameter("cname");
		
		CategoryDTO cdto = new CategoryDTO();
		cdto.setCidx(id);
		cdto.setCname(cname);
		
		CategoryDAO cdao = new CategoryDAO();
		int n = cdao.categoryUpdate(cdto);
		
		request.setAttribute("n", n);
		
		return "admin_category/admin_modifyresultcategory.jsp";
	}

}
