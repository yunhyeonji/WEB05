<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String language = "Korea";
/* 쿠키정보는 헤더영역에 같이 실아서 서버쪽으로 보냄 */
String cookie = request.getHeader("Cookie"); //헤더안에 쿠키가 있니?
		
if(cookie != null){ //만약에 있다면~
	Cookie cookies[] = request.getCookies();
	
	for(int i=0;i<cookies.length;i++){
		if(cookies[i].getName().equals("language")){
			/* 객체 하나에 쿠키 하나.. */
			language = cookies[i].getValue();
		}
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(language.equals("Korea")){%>
	<h3>안녕하세요. 이것은 쿠키 예제입니다.</h3>
<%}else if(language.equals("English")){%>
	<h3>Hello, This is Cookie Example.</h3>
<% }else{ %>
	<h3>Hej, det här är ett exempel på kakor.</h3>
<%}%>
<form method="post" action="multilingualpro.jsp">
	<input type="radio" name="language" value="Korea" <% if(language.equals("Korea")){%>checked<%}%>>한국어 페이지 보기
	<input type="radio" name="language" value="English" <% if(language.equals("English")){%>checked<%}%>>영어 페이지 보기
	<input type="radio" name="language" value="Swedish" <% if(language.equals("Swedish")){%>checked<%}%>>스웨덴어 페이지 보기
	<br>
	<input type="submit" value="확인">
</form>
</body>
</html>