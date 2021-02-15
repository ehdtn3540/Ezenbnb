package com.category.dao;

import java.io.*;
import java.util.*;

import org.apache.ibatis.io.*;
import org.apache.ibatis.session.*;

import com.category.dto.*;

public class CategoryDAO {
	private static SqlSessionFactory factory;
	private static CategoryDAO instance;

	static {
		try {
			String resource = "mybatis/mybatis-config.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			factory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 카테고리 리스트 보여주기------------------------------------
	public List<CategoryDTO> getCategoryList() {
		SqlSession session = factory.openSession();
		List<CategoryDTO> clist = session.selectList("mybatis.CategoryMapper.getCategoryList");
		session.close();
		return clist;
	}

	// 카테고리 추가하기-----------------------------------------
	public int categoryInsert(CategoryDTO cdto) {
		SqlSession session = factory.openSession();
		int n = 0;
		try {
			n = session.insert("mybatis.CategoryMapper.categoryInsert", cdto);
			if (n > 0)
				session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
		return n;
	}

	// 카테고리 삭제하기------------------------------------------
	public void categoryDelete(int id) {
		SqlSession session = factory.openSession();
		int n = 0;
		try {
			n = session.update("mybatis.CategoryMapper.categoryDelete", id);
			if (n > 0)
				session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}

	// 카테고리 수정하기------------------------------------------
	public int categoryUpdate(CategoryDTO cdto) {
		SqlSession session = factory.openSession();
		int n = 0;
		try {
			n = session.update("mybatis.CategoryMapper.categoryUpdate", cdto);
			if (n > 0)
				session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
		return n;
	}
}
