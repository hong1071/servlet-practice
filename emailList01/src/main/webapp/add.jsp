<%@page import="com.douzone.emailList.dao.EmailListDao"%>
<%@page import="com.douzone.emailList.vo.EmailListVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
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
	response.sendRedirect("/emailList01");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>성공적으로 등록되었습니다.</h1>
</body>
</html>