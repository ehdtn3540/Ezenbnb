package com.host.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.house.dao.HouseDAO;
import com.house.dto.HouseDTO;
import com.pay.dto.AccountDTO;
import com.pay.dto.PreApprvDTO;
import com.user.dto.UserDTO;

public class HostingDAO {
	private static SqlSessionFactory factory;
	private static HostingDAO instance;
	
	static {
		try {
			String resource="mybatis/mybatis-config.xml";
			Reader reader=Resources.getResourceAsReader(resource);
			factory=new SqlSessionFactoryBuilder().build(reader);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	//등록한 방 목록 가져오기
	public List<HouseDTO> getHostingList(int midx) {
		SqlSession session = factory.openSession();
		List<HouseDTO> list = session.selectList("mybatis.HouseMapper.getHostingList", midx);
		session.close();
		return list;
	}
	//등록한 방 삭제하기
	public void delHosting(int hidx) {
		SqlSession session = factory.openSession();
		int n=0;
		try{
			n=session.delete("mybatis.HouseMapper.delHosting",hidx);
			if(n > 0)
				session.commit();
		}catch(Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
	}
	//메세지함 첫화면 승인 내역 가져오기(갯수 카운트)
	public Map<String, String> getReqList(int midx) {
		SqlSession session = factory.openSession();
		List<AccountDTO> list1 = session.selectList("mybatis.AccountMapper.getReqList1", midx);
		List<AccountDTO> list2 = session.selectList("mybatis.AccountMapper.getReqList2", midx);
		
		String size_pre = String.valueOf(list1.size());
		String size_vd = String.valueOf(list2.size());
		
		Map<String, String> count = new HashMap<String, String>();
        count.put("size_pre",size_pre);
        count.put("size_vd", size_vd);
        
		session.close();
		return count;
	}
	//승인 대기 예약 리스트 가져오기
	public List<PreApprvDTO> getPreApprvList(int midx) {
		SqlSession session = factory.openSession();
		List<PreApprvDTO> list = session.selectList("mybatis.AccountMapper.getPreApprvList", midx);
		session.close();
		return list;
	}
	//승인 완료 예약 리스트 가져오기
	public List<PreApprvDTO> getApprvedList(int midx) {
		SqlSession session = factory.openSession();
		List<PreApprvDTO> list = session.selectList("mybatis.AccountMapper.getApprvdList", midx);
		session.close();
		return list;
	}	
	//예약 승인하기
	public int apprvUpdate(AccountDTO dto) {
		SqlSession session = factory.openSession();
		System.out.println("apprvUpdate DAO에 들어옴");
		int n = 0;
		try {
			n = session.update("mybatis.AccountMapper.apprvUpdate", dto);
			if(n>0)
				session.commit();
		}catch(Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
		return n;
	}
	//예약 거절하기
	public int declineUpdate(AccountDTO dto) {
		SqlSession session = factory.openSession();
		System.out.println("apprvUpdate DAO에 들어옴");
		int n = 0;
		try {
			n = session.update("mybatis.AccountMapper.declineUpdate", dto);
			if(n>0)
				session.commit();
		}catch(Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
		return n;
	}
}
