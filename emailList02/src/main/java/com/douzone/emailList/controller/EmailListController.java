package com.douzone.emailList.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.emailList.dao.EmailListDao;
import com.douzone.emailList.vo.EmailListVo;


public class EmailListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String action = request.getParameter("a");
		
		if("form".equals(action)) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/form.jsp");
			rd.forward(request, response);
		
		}
		else if("add".equals(action)){
			request.setCharacterEncoding("utf-8");
			String firstName = request.getParameter("fn");
			String lastName = request.getParameter("ln");
			String email = request.getParameter("email");
			
			EmailListVo vo = new EmailListVo();
			vo.setFirstName(firstName);
			vo.setLastName(lastName);
			vo.setEmail(email);
			
			new EmailListDao().insert(vo);
			
			// 리다이렉트 응답으로 브라우저를 이동한다
			response.sendRedirect("/emailList02/el");
		}
		else{	
			EmailListDao dao = new EmailListDao();
			List<EmailListVo> list = dao.findAll();
			
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
