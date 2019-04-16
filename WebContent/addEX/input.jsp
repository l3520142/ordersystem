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
		桌號：
		<select name="desk">
			<option value="A桌">A桌
			<option value="B桌">B桌
			<option value="C桌">C桌
			<option value="D桌">D桌							
		</select>
		<tr>
		<td colspan=3 align=center><hr>
		<tr>
		<td align=center><img alt="beef_noodles" src="pic/beef_noodle.jpg"><br>
		<b>牛肉麵&nbsp;120元</b><br>
		數量：
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
		<b>豚骨拉麵(特價)&nbsp;80元</b><br>
		數量：
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
		<b>餛飩麵&nbsp;60元</b><br>
		數量：
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
		<input type="submit" value="確定">
		<a href="../index.jsp">回主頁面</a>	
		</table>
		</form>
	<tr>
		<td align=center><%@ include file="../footer.jsp" %>
	</table>
</body>
</html>