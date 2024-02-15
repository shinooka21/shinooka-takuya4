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
String pajama = "akapajamakipajamachapajama";
int start = pajama.indexOf("pajama");
out.println(start + 1);
int end = pajama.lastIndexOf("pajama");
out.println(end + 1);
%>
</body>
</html>