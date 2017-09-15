<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*,javax.servlet.*" %>
<%@ page import="java.text.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>date.jsp</title>
</head>
<body>
<h1>显示当前日期和时间</h1>
<%
Date date = new Date();
out.println("<h2 align=\"center\">"+date.toString()+"</h2>");
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String date_str = sdf.format(date);
%>
<h2>整齐格式:<%=date_str %></h2>
</body>
</html>