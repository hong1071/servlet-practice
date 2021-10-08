package com.douzone.emailList.dao.test;

import java.util.List;

import com.douzone.emailList.dao.EmailListDao;
import com.douzone.emailList.vo.EmailListVo;

public class EmailListDaoTest {

	public static void main(String[] args) {
		
		//insertTest();
		fintAllTest();
	}
	
	private static void fintAllTest() {
		List<EmailListVo> list = new EmailListDao().findAll();
		for(EmailListVo vo : list) {
			System.out.println(vo);
		}
	}
	
	private static void insertTest() {
		EmailListVo vo = new EmailListVo();
		EmailListDao dao = new EmailListDao();
		
		vo.setFirstName("권");
		vo.setLastName("보미");
		vo.setEmail("hong1071@nate.com");
		dao.insert(vo);
	}

}
