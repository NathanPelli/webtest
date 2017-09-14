<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main.jsp</title>
</head>
<body>
<p>
动态指令include:<jsp:include page="date.jsp"/>
</p>
<h2>Jsp使用JavaBean实例</h2>
<jsp:useBean id="test" class="com.nathan.beans.TestBean"/>
<jsp:setProperty name="test" property="message" value="Hello Andy!"/>
<p>输出信息......</p>
<jsp:getProperty name="test" property="message"/>
<jsp:forward page="action.jsp"/>
</body>
</html>