<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Request Jsp</title>
</head>
<body>
<h1>使用GET方法读取数据</h1>
<ul>
<li><p><b>站点名:</b><%=request.getParameter("name") %></p></li>
<li><p><b>网址:</b><%=request.getParameter("url") %></p></li>
</ul>
<%-- 通过GET方法提交表单 --%>
<form action="request.jsp" method="GET">
站点名:<input type="text" name="site"/><br/>
网址:<input type="text" name="detail"/><br/>
<input type="submit" value="提交"/>
</form>
<%-- 使用POST方法提交表单 --%>
<br/>
<h1>使用POST读取数据</h1>
<ul>
<li><p><b>站点名:</b>
<%
//解决中文乱码的问题
String name = request.getParameter("name");
%>
<%=name %></p>
</li>
<li><p><b>网址:</b>
<%=request.getParameter("url") %>
</li>
</ul>
</body>
</html>