<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
 String sentence = "ビスケット";
 String x = sentence.replace("ビ", "バ");
 out.println(x);
 %>
</body>
</html>