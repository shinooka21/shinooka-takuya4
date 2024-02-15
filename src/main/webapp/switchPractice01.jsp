<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
    <label><input type="radio" name="color" value="red"> 赤</label>
    <label><input type="radio" name="color" value="yellow"> 黄</label>
    <label><input type="radio" name="color" value="blue"> 青</label>
    <input type="submit" name="submit" value="チェック">
</form>

<%
if (request.getMethod().equals("POST")) {
    String color = request.getParameter("color");

    if (color != null) {
        switch (color) {
            case "red":
                out.println("赤ですね。進んではいけません。");
                break;
            case "yellow":
                out.println("黄ですね。止まってください。");
                break;
            case "blue":
                out.println("青ですね。進んでください。");
                break;
            default:
                out.println("赤、黄、青のいずれかを選択してください。");
                break;
        }
    }
}
%>

</body>
</html>
