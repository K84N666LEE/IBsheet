<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<pre>
	nnn 의 value :

<%
	String[] nnn = request.getParameterValues("nnn"); //배열은 values로 받음.
	out.print("name[0] : " + nnn[0]);
%>
</pre>
</body>
</html>