<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
Cookie cookie = new Cookie("language",request.getParameter("language"));
cookie.setMaxAge(60);
response.addCookie(cookie);
%>
<script>
location.href="multilingual.jsp"
</script>