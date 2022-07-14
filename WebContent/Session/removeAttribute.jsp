<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	session.setAttribute("s_name1","나는 첫번째 값");
	session.setAttribute("s_name2","나는 두번째 값");
	session.setAttribute("s_name3","나는 세번째 값");
	
	out.print("<h3> >>세션값을 삭제하기 전<< </h3>");
	Enumeration names;
	names = session.getAttributeNames();
	while(names.hasMoreElements()){
		String name = names.nextElement().toString();
		String value = session.getAttribute(name).toString();
		out.println(name + " : " + value + "<br>");
	}
	
	session.removeAttribute("s_name2");
	
	out.print("<h3> >>세션값을 삭제한 후<< </h3>");
	names = session.getAttributeNames();
	while(names.hasMoreElements()){
		String name = names.nextElement().toString();
		String value = session.getAttribute(name).toString();
		out.println(name + " : " + value + "<br>");
	}
	
	session.invalidate();
	out.print("<h3> >>세션값을 모두 삭제한 후<< </h3>");
	// 모두 삭제되어 names로 값을 받아 올 수 가 없습니다.
	/* names = session.getAttributeNames();
	while(names.hasMoreElements()){
		String name = names.nextElement().toString();
		String value = session.getAttribute(name).toString();
		out.println(name + " : " + value + "<br>");
	} */
	
%>
</body>
</html>