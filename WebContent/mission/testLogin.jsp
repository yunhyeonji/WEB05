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
String name = "성윤정";
String id = "ps";
String pwd = "1234";

if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
	Cookie cookie = new Cookie("username",name);
	cookie.setMaxAge(60*60);
	response.addCookie(cookie);
	response.addCookie(new Cookie("pwd",pwd));
	response.addCookie(new Cookie("userid",id));
%>
<h2>성공적으로 로그인하였습니다.</h2>
<p><a href="main.jsp">들어가기</a>
<%
}else{
%>
<h2>로그인에 실패하였습니다.</h2>
<p><a href="loginForm.jsp">되돌아가기</a>
<%}%>
</body>
</html>