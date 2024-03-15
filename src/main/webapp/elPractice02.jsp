<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Integer count = (Integer) session.getAttribute("count");
if (count == null) {
count = 1;
} else {
count++;
}
session.setAttribute("count", count);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<p>count:${sessionScope.count}</p>
<form action="elPractice02.jsp" method="post">
<button type="submit">カウントアップ</button>
</form>
</div>
</body>
</html>