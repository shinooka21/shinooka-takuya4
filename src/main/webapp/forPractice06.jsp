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
    for (int i = 1; i <= 4; i++) {//行数
        for (int j = 1; j <= i; j++) {//横の個数
%>
            *
<%
        }
%>
        <br>
<%
    }
%>
</body>
</html>