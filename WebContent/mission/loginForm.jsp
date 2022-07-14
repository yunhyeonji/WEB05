<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <form method="post" action="testLogin.jsp">
        <h5>로그인 정보를 입력하세요</h5>
        <label for="userid">Your ID</label>
        <input type="text" name="id" placeholder="Your ID"><BR>
        <label for="userpwd">Password</label>
        <input type="password" id="pwd" name="pwd"><br>
        <button type="submit">로 그 인</button>
      </form>
</body>
</html>