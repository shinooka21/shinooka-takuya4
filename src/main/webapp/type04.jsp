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
  int num1 = 1;
  int num2 = 2;
  int num3 = 1;
  num3 = num1;
  num1 = num2;
  num2 = num3;
  out.println("num1の値は " + num1 + "です。");
  out.println("num2の値は" + num2 + "です。");
  %>
</body>
</html>