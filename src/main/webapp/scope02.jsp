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
// セッションでクリック回数を取得
Integer count = (Integer) session.getAttribute("clickCount");
if (count == null) {
    count = 0;
}

// クリックで場合カウントアップ
if (request.getParameter("clicked") != null) {
    count++;
    session.setAttribute("clickCount", count);
}
//クリアボタンで1にリセット
if (request.getParameter("clearClicked") != null) {
 count = 1;
 session.setAttribute("clickCount", count);
}
%>
<div>
<form action="scope02.jsp" method="post">
<p>クリック回数: <%= count %></p>
<button type="submit"name="clicked">クリック</button>
<button type="submit" name="clearClicked">クリア</button>
</form>
</div
</body>
</html>