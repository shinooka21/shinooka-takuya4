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
boolean b = false;
byte by = 1;
short s = 2;
int i = 3;
long l = 4;
float f = 0.5F;
double d = 0.25;
char c = 97;
b = b; // boolean boolean
//b = by; // byte boolean
//b = s; // short boolean
//b = i; // int boolean
//b = l; // long boolean
//b = f; // float boolean
//b = d; // double boolean
//b = c; // char boolean
//by = b; // boolean byte
by = by; // byte byte
//by = s; // short byte
//by = i; // int byte
//by = l; // long byte
//by = f; // float byte
//by = d; // double byte
//by = c; // char byte
//s = b; // boolean short
s = by; // byte short
s = s; // short short
//s = i; // int short
//s = l; // long short
//s = f; // float short
//s = d; // double short
//s = c; // char short
//i = b; // boolean int
i = by; // byte int
i = s; // short int
i = i; // int int
//i = l; // long int
//i = f; // float int
//i = d; // double int
i = c; // char int
//l = b; // boolean long
l = by; // byte long
l = s; // short long
l = i; // int long
l = l; // long long
//l = f; // float long
//l = d; // double long
l = c; // char long
//f = b; // boolean float
f = by; // byte float
f = s; // short float
f = i; // int float
f = l; // long float
f = f; // float float
//f = d; // double float
f = c; // char float
//d = b; // boolean double
d = by; // byte double
d = s; // short double
d = i; // int double
d = l; // long double
d = f; // float double
d = d; // double double
d = c; // char double
//c = b; // boolean char
//c = by; // byte char
//c = s; // short char
//c = i; // int char
//c = l; // long char
//c = f; // float char
//c = d; // double char
c = c; // char char

%>
</body>
</html>