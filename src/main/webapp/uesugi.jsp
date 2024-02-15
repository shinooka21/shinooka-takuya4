<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <form action="takeda.jsp">
    <label for="name">名前：</label>
    <input type="text" id="name" name="name">
    
    <br>
    
     <select name="choice">
        <option value="第一次合戦">第一次合戦</option>
        <option value="第二次合戦">第二次合戦</option>
        <option value="第三次合戦">第三次合戦</option>
    </select>

    <br>
    
    <input type="submit" value="武田を呼ぶ">
  </form>

</body>
</html>