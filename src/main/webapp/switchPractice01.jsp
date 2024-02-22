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
    <label><input type="radio" name="color" value="0"> 赤</label>
    <label><input type="radio" name="color" value="1"> 黄</label>
    <label><input type="radio" name="color" value="2"> 青</label>
    <input type="submit" name="submit" value="チェック">
</form>

<%
if (request.getMethod().equals("POST")) {
    String color = request.getParameter("color");

    if (color != null) {
        switch (color) {
            case "0":
                out.println("赤ですね。進んではいけません。");
                break;
            case "1":
                out.println("黄ですね。止まってください。");
                break;
            case "2":
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
