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
		LocalDate.now().getYear()+"�~"+
		LocalDate.now().getMonthValue()+"��"+
		LocalDate.now().getDayOfMonth()+"��&nbsp;&nbsp;"+
		LocalTime.now().getHour()+":"+LocalTime.now().getMinute()
		);
LocalDate ld=LocalDate.now();
LocalTime lt=LocalTime.now();
%>
<table width=100% bgcolor=#DDFF77><tr><td align=center>
�{�b�ɶ�<br>
	<%=ld.getYear() %>�~
	<%=ld.getMonthValue() %>��
	<%=ld.getDayOfMonth() %>��
	&nbsp;<%=lt.getHour() %>:<%=lt.getMinute() %></table>
</body>
</html>