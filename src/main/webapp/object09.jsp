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
 String no = "256";
 boolean bol = no.matches("\\d{3}");
 out.println(bol);
 %>
</body>
</html>