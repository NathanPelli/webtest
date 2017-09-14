<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HTML JSP</title>
</head>
<body>
<h2>CheckBox传递一个或者多个值</h2>
<form action="header.jsp" method="POST" target="_blank">
<input type="checkbox" name="google" checked="checked"/>Google
<input type="checkbox" name="runoob" />菜鸟教程
<input type="checkbox" name="taobao" checked="checked"/>淘宝
<input type="submit" value="选择网站"/>
</form>
</body>
</html>