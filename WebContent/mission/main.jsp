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
String name = null;
String id =null;
Cookie ck1[] = null;
ck1 = request.getCookies();
if(ck1 != null){
	for(int i=0;i<ck1.length;i++){
		if(ck1[i].getName().equals("username")){
			name = ck1[i].getValue();
		}else if(ck1[i].getName().equals("userid")){
			id = ck1[i].getValue();
		}
	}
%>
	<%= name %><%= id %>님 안녕하세요! <br>
	저희 홈페이지를 찾아주셔서 감사합니다<br>
	즐거운 시간 되세요^&^<br>
	<form action="logout.jsp" method="post">
		<input type="submit" value="로그아웃">
	</form>
<%}else{%>
	<h2>로그인에 실패하였습니다.</h2>
	<p><a href="loginForm.jsp"></a>되돌아가기</p>
<%}%>

</body>
</html>