<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<%@ page import="java.io.IOException" %>
<link rel="stylesheet" href="stone.css">

<%
// ゲームの初期設定
int totalNum;
String currentPlayer;

// セッションから情報を取得するか、初回またはゲーム終了時の場合は初期化
if (session.getAttribute("totalNum") == null || session.getAttribute("gameOver") != null) {
    totalNum = 25;
    currentPlayer = "A";
    session.setAttribute("totalNum", totalNum);
    session.setAttribute("currentPlayer", currentPlayer);
    session.removeAttribute("gameOver");
} else {
    totalNum = (int) session.getAttribute("totalNum");
    currentPlayer = (String) session.getAttribute("currentPlayer");
}

// フォームからの入力処理
if (request.getMethod().equals("POST")) {
    int stonesTaken = Integer.parseInt(request.getParameter("stonesTaken"));
    totalNum -= stonesTaken;

    // ゲームが終了した場合
    if (totalNum <= 0) {
        // ゲーム終了フラグをセット
        session.setAttribute("gameOver", true);

        // ゲーム終了時、finish.jspにリダイレクト
        response.sendRedirect("finish.jsp?winner=" + currentPlayer);
        return; // リダイレクト後はこのページの処理を中断する
    }

    currentPlayer = (currentPlayer.equals("A")) ? "B" : "A";

    // ゲームの状態をセッションに保存
    session.setAttribute("totalNum", totalNum);
    session.setAttribute("currentPlayer", currentPlayer);
}

// ゲームの状態を取得
totalNum = (int) session.getAttribute("totalNum");
currentPlayer = (String) session.getAttribute("currentPlayer");

// 石の数を"●"を連結した文字列で表示。10行ごとに改行
String getStoneDisplayHtml = "";
for (int i = 0; i < totalNum; i++) {
    getStoneDisplayHtml += "●";
    if ((i + 1) % 10 == 0) {
        getStoneDisplayHtml += "<br>";
    }
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>石取りゲーム</h3>
<div class="nokori">
<p><h4>残り:<%= totalNum %>個</h4></p>
<p class="kaeru"> <%= getStoneDisplayHtml %></p>

 </div>
    
<div class="player">
<form action="play.jsp" method="post">
    <h4>プレーヤー <%= currentPlayer %>の番</h4>
    石を<input type="number" name="stonesTaken" min="1" max="3" required>個取る
   <p> <input type="submit" value="決定"></p>
</form>
</div>
</body>
</html>
