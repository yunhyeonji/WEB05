<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
// 1. Cookie생성
Cookie c=new Cookie("id","pinksung");
// 2. 유효기간 설정 : 저장하고 있는 기간
c.setMaxAge(365*24*60*60);
// 3. 클라이언트에 쿠키 전송
response.addCookie(c);
// 4. 쿠키를 생성하며 클라이언트에 전송
// 4로 만든 쿠키는 유효시간을 설정하지않아서 브라우저를 껏다가 켜면 다 날라감
response.addCookie(new Cookie("pwd","1234"));
response.addCookie(new Cookie("age","20"));
%>
<h3>쿠키 설정</h3>
<a href="removeCookie.jsp">id 쿠키 삭제</a>
<a href="getCookie.jsp">쿠키확인</a>
</body>
</html>