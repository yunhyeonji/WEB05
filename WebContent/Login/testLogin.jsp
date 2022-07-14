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
	String id = "ps";
	String pwd = "1234";
	String name = "성윤정";
	
	if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
		session.setAttribute("loginUser", name);
		response.sendRedirect("main.jsp");
	}else{
%>
		<script>
		alert("아이디 또는 비밀번호를 다시 확인해주십시오.");
		location.href="loginForm.jsp";
		</script>
<%
/* 		response.sendRedirect("loginForm.jsp"); */
	}
%>
</body>
</html>