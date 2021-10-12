package guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import guestbook.dao.guestbookDao;
import guestbook.vo.guestbookVo;

public class guestbookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		String action = request.getParameter("a");
		if("add".equals(action)) {
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String message = request.getParameter("message");
			
			guestbookVo vo = new guestbookVo();  
			guestbookDao dao = new guestbookDao();
			vo.setName(name);
			vo.setPassword(password);
			vo.setMessage(message);
			dao.insert(vo);
			
			response.sendRedirect("/guestbook02/main");
		}
		else if("del".equals(action)){
			
			String no = request.getParameter("no");
			RequestDispatcher rd = request.getRequestDispatcher("/views/deleteform.jsp?no=" + no);
			rd.forward(request, response);
		}
		else if("delData".equals(action)) {
			
			String no = request.getParameter("id");
			String password = request.getParameter("password");
			
			guestbookDao dao = new guestbookDao();
			dao.delete(no, password);
			
			response.sendRedirect("/guestbook02/main");
			
		}
		else{	
			guestbookDao dao = new guestbookDao();
			List<guestbookVo> list = dao.findAll();
			
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("/views/index.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
