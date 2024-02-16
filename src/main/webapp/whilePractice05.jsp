<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div>
 <p>
 <%
//① 再表示
 String[] selectedItems = request.getParameterValues("param");

 // ② 再表示後、合計を表示
 int totalAmount = 0;
 if (selectedItems != null) {
     for (String item : selectedItems) {
         int itemPrice = Integer.parseInt(item);
         totalAmount += itemPrice;
     }
 }
 %>
 </p>
<p> 購入する商品を選択してください</p>
<form action="whilePractice05.jsp" method="post">
<input type="checkbox" name="param" value="120"> ニンジン(120円) <br>
<input type="checkbox" name="param" value="198"> 玉ねぎ(198円)<br>
<input type="checkbox" name="param" value="198"> ジャガイモ(198円) <br>
<input type="checkbox" name="param" value="266"> 豚肉(266円)<br>
<input type="checkbox" name="param" value="189"> 鶏肉(189円) <br>
<input type="checkbox" name="param" value="398"> 牛肉(398円) <br>
<input type="checkbox" name="param" value="158"> カレールー(158円)<br>
<button type="submit">決定</button>
</form>
    <p>
        <%-- 合計金額を表示 --%>
        <% if (selectedItems != null) { %>
            合計金額は <%= totalAmount %> 円です。
        <% } else { %>
            商品が選択されていません。<%--選択されていない時に表示 --%>
        <% } %>
    </p>
</div>
</body>
</html>