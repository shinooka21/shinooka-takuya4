<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
String param = request.getParameter("param");
int num;
if (param != null && !param.isEmpty()) {
    num = Integer.parseInt(param);
} else {
    num = -1;
}
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>タイトルを入力</title>
</head>
<body>
    <div>
        <form action="ifPractice03.jsp" method="post">
            <input type="number" name="param">
            <button type="submit">チェック</button>
        </form>

        <%
        if (num >= 80 && num <= 100) {
        %>
            A評価です
        <%
        } else if (num >= 60 && num < 80) {
        %>
            B評価です
        <%
        } else if (num >= 40 && num < 60) {
        %>
            C評価です
        <%
        } else if (num >= 20 && num < 40) {
        %>
            D評価です
        <%
        } else if (num < 20 && num >= 0) {
        %>
            E評価です
        <%
        } else {
        %>
          
        <%
        }
        %>
    </div>
</body>
</html>
