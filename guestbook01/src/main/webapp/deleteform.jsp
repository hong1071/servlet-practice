<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String no = request.getParameter("no");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form method="post" action="delete.jsp"> <!-- no값과 비밀번호 값을 delete.jsp로 넘기자 -->
		<input type="hidden" name="id" value="<%=no%>">
		<input type="password" name="password">
		<input type="submit" value="확인">
	</form>
	<br>
	<a href="/guestbook01">메인으로 돌아가기</a>
	
</body>
</html>