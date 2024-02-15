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
 String axiz =" A x i Z ";
 String x = axiz.replaceAll("\\s", "");
 out.println(x);
 %>
</body>
</html>