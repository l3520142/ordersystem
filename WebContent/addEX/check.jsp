<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="com.porder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>HELLO NOODLE RESTERENT</title>
</head>
<body background="../bgpic/noodlebg.jpg">
	<table width=750 align=center border=1 bgcolor="#FFF5EE">
	<tr>
		<td align=center><%@ include file="../header.jsp" %>
	<tr>
		<td align=center>
		<form method="post" action="finish.jsp">
		<table width=400 align=center border=1 bgcolor="#FFDDAA">
		<tr bgcolor="#FFAA33">
			<td align=center colspan=2><font size=16>訂單細目</font>
		<tr>
			<td width=100 align=center>桌號
			<td align=center>${P.getDesk()}		
		<tr>
			<td width=100 align=center>牛肉麵
			<td align=center>${P.getPro3()}
		<tr>
			<td width=100 align=center>豚骨拉麵
			<td align=center>${P.getPro1()}
		<tr>
			<td width=100 align=center>餛飩麵
			<td align=center>${P.getPro2()}
		<tr>
			<td width=100 align=center>共計
			<td align=center>${P.getSum()}
		<tr>	
			<td align=center colspan=2><input type="submit" value="確定">
			<a href="input.jsp">重填</a>
		</table>
		</form>
	<tr>
		<td align=center><%@ include file="../footer.jsp" %>
	</table>
</body>
</html>