<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="join.jsp" method="post">
		이메일: <input type="text" name="email">
		<br><br>
		
		비밀번호: <input type="password" name="password">
		<br><br>
		
		<select name="birthYear">
			<option value="1996">1996년</option>
			<option value="1995">1995년</option>
			<option value="1994">1994년</option>
		</select>
		<br><br>
		
		성별:
		남 <input type="radio" name="gender" value="M"/>
		여 <input type="radio" name="gender" value="F"/>
		<br><br>
		
		취미:
		코딩 <input type="checkbox" name="hobby" value="coding">
		축구 <input type="checkbox" name="hobby" value="soccer">
		먹기 <input type="checkbox" name="hobby" value="eat">
		<br><br>
		
		자기소개<br>
		<textarea name="profile"></textarea>
		<br><br>
		
		<input type="submit" value="회원가입"/>
		
	</form>
</body>
</html>