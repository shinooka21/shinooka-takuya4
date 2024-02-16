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
Integer count = (Integer) session.getAttribute("clickCount");
if (count == null) {
    count = 0;
}
if (request.getParameter("clicked") != null) {
    count++;
    session.setAttribute("clickCount", count);
}
%>

<div>
 <form action="scope01.jsp" method="post">
        <p>クリック回数: <%= count %></p>
        <button type="submit" name="clicked">クリック</button>
 </form>
</div>
</body>
</html>