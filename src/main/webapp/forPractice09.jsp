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
    for (int k = 0; k < 3; k++) {//8の課題を外側で3回繰り返し
        for (int i = 1; i <= 5; i++) {
            for (int j = 1; j <= i; j++) {
%>
                *
<%
            }
%>
            <br>
<%
        }
        
        for (int i = 4; i >= 1; i--) {
            for (int j = 1; j <= i; j++) {
%>
                *
<%
            }
%>
            <br>
<%
        }
    }
%>
</body>
</html>