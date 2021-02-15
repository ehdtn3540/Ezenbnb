package com.category.service;

import javax.servlet.http.*;

import com.category.dao.*;
import controller.*;

public class CategoryDelete implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
//		System.out.println("언제와....");

		int id = Integer.parseInt(request.getParameter("cidx"));

		CategoryDAO cdao = new CategoryDAO();
		cdao.categoryDelete(id);

		return "admin_category/admin_deletecategory.jsp";
	}

}
