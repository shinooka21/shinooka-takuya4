<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<%@ page import="java.io.IOException" %>
<%@ page import="stone1.Utility" %>
<link rel="stylesheet" href="stone.css">

<%
int totalNum;
String currentPlayer;

// セッションから情報を取得するか、初回、ゲーム終了時のときは初期化する
if (session.getAttribute("totalNum") == null || session.getAttribute("gameOver") != null) {
    totalNum = 25;
    currentPlayer = "A";
    session.setAttribute("totalNum", totalNum);//"totalNum"という名前でtotalNumに保存
    session.setAttribute("currentPlayer", currentPlayer);//上に同じ
    session.removeAttribute("gameOver");//新しいゲームをはじめるためにセッションからgameOverという文字を削除
} else {//で、上記が満たされなければまだゲームが続いてるから下記条件を実行する
    totalNum = (int) session.getAttribute("totalNum");
    currentPlayer = (String) session.getAttribute("currentPlayer");
}

// フォームからの入力処理
if (request.getMethod().equals("POST")) {//
    int stonesTaken = Integer.parseInt(request.getParameter("stonesTaken"));//stonesTakenプレイヤーが取った石の数
    totalNum -= stonesTaken;//取った医師の数を今ある合計から引く

    // ゲームが終了した場合
    if (totalNum <= 0) {
        // gameOverとセット
        session.setAttribute("gameOver", true);

        // ゲーム終了時、finish.jspにリダイレクト
        response.sendRedirect("finish.jsp?winner=" + currentPlayer);
        return; // リダイレクト後はこのページの処理を中断
    }
    //現在のプレイヤーが"A"なら"B"に、"B"なら"A"に変更する
    currentPlayer = (currentPlayer.equals("A")) ? "B" : "A";

    // ゲームの状態をセッションに保存
    session.setAttribute("totalNum", totalNum);
    session.setAttribute("currentPlayer", currentPlayer);
}

// ゲームの状態を取得
totalNum = (int) session.getAttribute("totalNum");
currentPlayer = (String) session.getAttribute("currentPlayer");

// 石の数を"●"を連結した文字列で表示。10行ごとに改行
String getStoneDisplayHtml = Utility.getStoneDisplayHtml(totalNum);
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
