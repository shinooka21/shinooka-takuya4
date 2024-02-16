<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
<%
    int rows = 5;

    for (int m = 1; m <= 5; m++) {
%>
        <div style="display: inline-block;">
<%
        for (int i = 1; i <= rows; i++) {
            // 左側の星
            for (int j = 1; j <= i; j++) {
                out.print("*");
            }

            // 右側の空白
            for (int k = 1; k <= rows - i; k++) {
                out.print("&nbsp;&nbsp;&nbsp;");
            }

            // 右側の星
            for (int l = 1; l <= i; l++) {
                out.print("*");
            }

            out.println("<br>");
        }

        for (int i = rows - 1; i >= 1; i--) {
            // 左側の星
            for (int j = 1; j <= i; j++) {
                out.print("*");
            }

            // 右側の空白
            for (int k = 1; k <= rows - i; k++) {
                out.print("&nbsp;&nbsp;&nbsp;");
            }

            // 右側の星
            for (int l = 1; l <= i; l++) {
                out.print("*");
            }

            out.println("<br>");
        }
%>
        </div>
<%
    }
%>
</div>
</body>
</html>