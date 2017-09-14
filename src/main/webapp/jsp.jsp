<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%! int day=3; %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>localhost</title>
</head>
<body>
<h3>IF...ELSE实例</h3>
<% if(day==1 || day==7) {%>
<p>今天是周末</p>
<% }else{ %>
<p>今天是工作日</p>
<% } %>
<h3>SWITCH...CASE实例</h3>

<%
switch(day) {
case 0:
   out.println("星期天");
   break;
case 1:
   out.println("星期一");
   break;
case 2:
   out.println("星期二");
   break;
case 3:
   out.println("星期三");
   break;
case 4:
   out.println("星期四");
   break;
case 5:
   out.println("星期五");
   break;
default:
   out.println("星期六");
}
%>
<br/>
<%-- 循环语句 --%>
<%
for(int i=0;i<5;i++){
%>
<font color="green" size="<%=i %>">菜鸟教程</font><br/>
<% } %>
<%-- 显示日期如下 --%>
<p>今天的日期是:<%=(new java.util.Date().toLocaleString()) %></p>
</body>
</html>