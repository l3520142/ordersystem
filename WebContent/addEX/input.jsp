<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
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
		<form method="post" action="../add">
		<table width=600 align=center>
		<tr>
		<td colspan=3 align=center>
		�ู�G
		<select name="desk">
			<option value="A��">A��
			<option value="B��">B��
			<option value="C��">C��
			<option value="D��">D��							
		</select>
		<tr>
		<td colspan=3 align=center><hr>
		<tr>
		<td align=center><img alt="beef_noodles" src="pic/beef_noodle.jpg"><br>
		<b>������&nbsp;120��</b><br>
		�ƶq�G
		<select name="pro3">
			<option value="0">0
			<option value="1">1
			<option value="2">2
			<option value="3">3
			<option value="4">4
			<option value="5">5
			<option value="6">6
			<option value="7">7
			<option value="8">8						
		</select>	
		<td align=center><img alt="Shio_Ramen" src="pic/Shio_Ramen.jpg"><br>
		<b>�b������(�S��)&nbsp;80��</b><br>
		�ƶq�G
		<select name="pro1">
			<option value="0">0
			<option value="1">1
			<option value="2">2
			<option value="3">3
			<option value="4">4
			<option value="5">5
			<option value="6">6
			<option value="7">7
			<option value="8">8						
		</select>	
		<td align=center><img alt="Wonton_noodles" src="pic/Wonton_noodles.jpg"><br>
		<b>�_����&nbsp;60��</b><br>
		�ƶq�G
		<select name="pro2">
			<option value="0">0
			<option value="1">1
			<option value="2">2
			<option value="3">3
			<option value="4">4
			<option value="5">5
			<option value="6">6
			<option value="7">7
			<option value="8">8						
		</select>
		<tr>
		<td colspan=3 align=center><hr>
		<tr>
		<td colspan=3 align=center>
		<input type="submit" value="�T�w">
		<a href="../index.jsp">�^�D����</a>	
		</table>
		</form>
	<tr>
		<td align=center><%@ include file="../footer.jsp" %>
	</table>
</body>
</html>