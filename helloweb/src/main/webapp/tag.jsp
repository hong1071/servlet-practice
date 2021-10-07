<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello World</h1>
	<h2>Hello World</h2>
	<h3>Hello World</h3>
	<h4>Hello World</h4>
	<h5>Hello World</h5>
	<h6>Hello World</h6>
	
	<table border="1" cellspaing="0" cellpadding="10">
		<tr>
			<th>글번호</th>
			<th>글제목</th>
			<th>작성자</th>
		</tr>
		<tr>
			<td>1</td>
			<td>안녕</td>
			<td>둘리</td>
		</tr>
		<tr>
			<td>2</td>
			<td>hi</td>
			<td>michael</td>
		</tr>
	</table>
	<br/>
	<img src="/helloweb/assets/images/arsenal.png" style="width:150px; border:1px solid black;"/>
	<br/>
	<img src="./assets/images/arsenal.png" style="width:150px; border:1px solid black;"/>
	<br/>
	
	<a href="form.jsp">폼으로 가기</a>
	<a href="/helloweb/hello.jsp?name=홍창목&email=hong1071@nate.com">hello</a>
	<p>
	10월 07, 2021 3:03:00 오후 org.apache.catalina.startup.Catalina start<br/>
	정보: Server startup in 438 ms
	</p>
</body>
</html>