<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试POST方法</title>
</head>
<body>
<form action="/restful/rest/students/add" method="post">
<input type="text" id="name" name="name"/><br/>
<input type="text" id="dept" name="dept"/><br/>
<input type="submit"/>
</form>
<% out.println("Hello World!"); %>
</body>
</html>