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
        int startYear = 1800;
        int endYear = 2000;
        int leapYearCount = 0;

        for (int year = startYear; year <= endYear; year++) {
        //ここではyearがstartYearからendYearの範囲で増加
            if (isLeapYear(year)) {
                leapYearCount++;//閏年であれば回数を増加それが下のLeapYearにはいる。
            }
        }
  %>

閏年の回数は<%= leapYearCount %>回です。

<%!
        //閏年かを判定
        private boolean isLeapYear(int year) {
            // 4で割り切れるたら閏年、
            //100で割り切れる年は閏年ではないが、400で割り切れる年は再び閏年
            return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
        }
  %>
</body>
</html>