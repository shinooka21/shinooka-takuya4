<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
    <label><input type="radio" name="station" value="0"> 新橋</label>
    <label><input type="radio" name="station" value="1"> 浜松町</label>
    <label><input type="radio" name="station" value="2"> 田町</label>
    <label><input type="radio" name="station" value="3"> 品川</label>
    <input type="submit" name="submit" value="決定">
</form>

<%
if (request.getMethod().equals("POST")) {
    String station = request.getParameter("station");

    if (station != null) {
        switch (station) {
            case "0":
                out.println("東京まで有楽町を通過します");
                break;
            case "1":
                out.println("東京まで 新橋 有楽町 を通過します");
                break;
            case "2":
                out.println("東京まで浜松町 新橋 有楽町 を通過します");
                break;
            case "3":
                out.println("東京まで田町 浜松町 新橋 有楽町 を通過します");
                break;
            default:
                out.println("駅を選択してください");
                break;
        }
    }
}
%>
</body>
</html>