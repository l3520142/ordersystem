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
			<td align=center colspan=2><font size=16>�q��ӥ�</font>
		<tr>
			<td width=100 align=center>�ู
			<td align=center>${P.getDesk()}		
		<tr>
			<td width=100 align=center>������
			<td align=center>${P.getPro3()}
		<tr>
			<td width=100 align=center>�b������
			<td align=center>${P.getPro1()}
		<tr>
			<td width=100 align=center>�_����
			<td align=center>${P.getPro2()}
		<tr>
			<td width=100 align=center>�@�p
			<td align=center>${P.getSum()}
		<tr>	
			<td align=center colspan=2><input type="submit" value="�T�w">
			<a href="input.jsp">����</a>
		</table>
		</form>
	<tr>
		<td align=center><%@ include file="../footer.jsp" %>
	</table>
</body>
</html>