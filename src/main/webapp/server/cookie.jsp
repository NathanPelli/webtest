<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cookie</title>
</head>
<body>
<%
//编码,解决中文乱码的问题
String str = URLEncoder.encode(request.getParameter("name"),"utf-8");  
// 设置 name 和 url cookie 
Cookie name = new Cookie("name",str);
Cookie url = new Cookie("url",request.getParameter("url"));
//设置cookie过期时间24小时
name.setMaxAge(60*60*24);
url.setMaxAge(60*60*24);
//在响应头部添加cookie
response.addCookie(name);
response.addCookie(url);
%>
<ul>
<li><p><b>网站名:</b><%=request.getParameter("name") %></p></li>
<li><p><b>网址:</b><%=request.getParameter("url") %></p></li>
</ul>
</body>
</html>