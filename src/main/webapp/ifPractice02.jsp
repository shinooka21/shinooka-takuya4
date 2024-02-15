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
    
        <form action="ifPractice02.jsp" method="post">
            <input type="number" name="param">
            <button type="submit">チェック</button>
        </form>
          <div>
          <p>
        
            <%
            if (num >= 60) {
            %>
               合格です
            <%
            } else {
            %>
               不合格です
            <%
            }
            %>
        </p>
    </div>
</body>
</html>
