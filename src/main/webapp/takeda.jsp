<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>takeda.jsp</title>
</head>
<body>

<%
    // フォームから送信された名前を取得
    String name = request.getParameter("name");

    // フォームから送信された選択肢の値を取得
    String selectedChoice = request.getParameter("choice");

    // 名前が送信された場合、受け取ったメッセージを表示
    if (name != null && !name.isEmpty()) {
        out.println(name + "を受け取った");
    }

    // 選択された選択肢を表示
    if (selectedChoice != null && !selectedChoice.isEmpty()) {
        out.println(selectedChoice + "が行われました");
    }
%>
<a href="uesugi.jsp">上杉を呼ぶ</a>
</body>
</html>
