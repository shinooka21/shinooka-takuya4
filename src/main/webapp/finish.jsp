<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="stone.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h3>石取りゲーム</h3>
   <div class="finish">
   <% 
        String winner = request.getParameter("winner");
        String loser = (winner.equals("A")) ? "B" : "A";
        out.println("勝者: プレイヤー " + loser + "！！");
    %>
    
    <p><a href="index.jsp" class="button">先頭に戻る</a></p>
    </div>
</body>
</html>