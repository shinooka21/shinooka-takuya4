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
    <label><input type="radio" name="station" value="shinbashi"> 新橋</label>
    <label><input type="radio" name="station" value="hamamatsucho"> 浜松町</label>
    <label><input type="radio" name="station" value="tamachi"> 田町</label>
    <label><input type="radio" name="station" value="shinagawa"> 品川</label>
    <input type="submit" name="submit" value="決定">
</form>

<%
if (request.getMethod().equals("POST")) {
    String station = request.getParameter("station");

    if (station != null) {
        switch (station) {
            case "shinbashi":
                out.println("東京まで有楽町を通過します");
                break;
            case "hamamatsucho":
                out.println("東京まで 新橋 有楽町 を通過します");
                break;
            case "tamachi":
                out.println("東京まで浜松町 新橋 有楽町 を通過します");
                break;
            case "shinagawa":
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