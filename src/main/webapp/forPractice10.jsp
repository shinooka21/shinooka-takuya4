<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int rows = 4;

for (int i = 1; i <= rows; i++) {
    // 左上の星
    for (int j = 1; j <= i; j++) {
        out.print("*");
        
    }

    for (int k = 4; k >= i; k--){
    out.print("__");
    }
    
    // 右上の星
    for (int l = 1; l <= i; l++) {
        out.print("*");
    }
    
    out.println("<br>");
    
}
    out.println("**********");
    out.println("<br>");
    
    
    for (int i = 1; i <= rows; i++) {
        // 左上の星
        for (int j = 4; j >= i; j--) {
            out.print("*");
        }

        for (int k = 1; k <= i; k++){
            out.print("__");
        }

        // 右上の星
        for (int l = 4; l >= i; l--) {
            out.print("*");
        }

        out.println("<br>");
    }
%>
</body>
</html>