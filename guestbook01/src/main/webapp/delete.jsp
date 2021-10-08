<%@page import="guestbook.dao.guestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String no = request.getParameter("id");
	String password = request.getParameter("password");
	
	guestbookDao dao = new guestbookDao();
	dao.delete(no, password);
	
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