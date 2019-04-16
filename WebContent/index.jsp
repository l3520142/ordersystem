<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>HELLO NOODLE RESTERENT</title>
</head>
<body background="bgpic/noodlebg.jpg">
<table width=750 align=center border=1 bgcolor="#FFF5EE">
<tr>
	<td align=center><%@ include file="header1.jsp" %>
<tr>
	<td align=center><%@ include file="time.jsp" %>
<tr>
	<td align=center>
		<table width=400 align=center >
				<tr>
					<td align=center><a href="addEX/input.jsp">新增</a>
				<tr>
					<td align=center><a href="queryEX/query.jsp">查詢</a>
				<tr>
					<td align=center><a href="setEX/update.jsp">修改</a>
				<tr>
					<td align=center><a href="delEX/deleteID.jsp">刪除</a>
			
			</table>
<marquee direction="left" scrollamount="10" behavior="alternate"><font size=4 color=red>~ 開幕優惠 ~<b>豚骨拉麵現正特價80元</b></font></marquee>
<tr>
	<td align=center><%@ include file="footer.jsp" %>
</table>
<p align="center"><font color=white><b>POWERED BY 張家豪 COPYRIGHT(C) 2019</b></font></p>
</body>
</html>