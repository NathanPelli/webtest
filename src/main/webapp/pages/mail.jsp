<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*,javax.mail.*" %>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发送邮件</title>
</head>
<body>
<%
String result = "";
//收件人的邮件地址
String to = "ab@gmail.com";
//发件人的邮件地址
String from = "mn@gmail.com";
//假设你是从本地主机发送邮件
String host = "localhost";
//获取系统属性对象
Properties properties = System.getProperties();
//设置邮件服务器
properties.setProperty("mail.smtp.host", host);
//获取默认的session对象
Session mailSession = Session.getDefaultInstance(properties);
try{
	// 创建一个默认的MimeMessage对象。
    MimeMessage message = new MimeMessage(mailSession);
    // 设置 From: 头部的header字段
    message.setFrom(new InternetAddress(from));
    // 设置 To: 头部的header字段
    message.addRecipient(Message.RecipientType.TO,
                             new InternetAddress(to));
    // 设置 Subject: header字段
    message.setSubject("This is the Subject Line!");
    // 现在设置的实际消息
    message.setText("This is actual message");
    // 发送消息
    Transport.send(message);
    result = "Sent message successfully....";
}catch(Exception e){
	e.printStackTrace();
    result = "Error: unable to send message....";
}
%>
</body>
</html>