<%@page import="guestbook.vo.guestbookVo"%>
<%@page import="guestbook.dao.guestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");
	
	guestbookVo vo = new guestbookVo();  
	guestbookDao dao = new guestbookDao();
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);
	dao.insert(vo);
	
	response.sendRedirect("/guestbook01");
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>