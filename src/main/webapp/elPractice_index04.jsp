<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
    function sanitizeInput(input) {
        // 入力値をすべてエスケープするため追加
        return input.replace(/</g, "&lt;").replace(/>/g, "&gt;");
    }
</script>
</head>
<body>
<form action="ElPractice04" method="post">
        <label for="userInput">メッセージを入力してください</label>
        <p><input type="text" id="userInput" name="userInput">
        <button type="submit">送信</button></p>
    </form>
</body>
</html>