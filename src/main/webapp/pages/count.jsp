<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>访问量统计</title>
</head>
<body>
<!-- jsp点击量统计 -->
<%
	Integer hitsCount = (Integer)application.getAttribute("hitCounter");
	if(hitsCount == null || hitsCount == 0){
		//第一次访问
		out.println("欢迎访问该页面!");
		hitsCount = 1;
	}else{
		hitsCount++;
	}
	application.setAttribute("hitCounter", hitsCount);
%>
<h1>访问次数:</h1><br/>
<h2 ><%=hitsCount %></h2>
</body>
</html>