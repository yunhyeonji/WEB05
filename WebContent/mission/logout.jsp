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
Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(int i=0;i<cookies.length;i++){
		cookies[i].setMaxAge(0);
		response.addCookie(cookies[i]);
	}
}
%>
	<script type="text/javascript">
		alert("로그아웃이 되었습니다.");
		location.href="loginForm.jsp";
	</script>
</body>
</html>