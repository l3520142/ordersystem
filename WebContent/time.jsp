<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="java.time.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
application.setAttribute("ltime",
		LocalDate.now().getYear()+"年"+
		LocalDate.now().getMonthValue()+"月"+
		LocalDate.now().getDayOfMonth()+"日&nbsp;&nbsp;"+
		LocalTime.now().getHour()+":"+LocalTime.now().getMinute()
		);
LocalDate ld=LocalDate.now();
LocalTime lt=LocalTime.now();
%>
<table width=100% bgcolor=#DDFF77><tr><td align=center>
現在時間<br>
	<%=ld.getYear() %>年
	<%=ld.getMonthValue() %>月
	<%=ld.getDayOfMonth() %>日
	&nbsp;<%=lt.getHour() %>:<%=lt.getMinute() %></table>
</body>
</html>