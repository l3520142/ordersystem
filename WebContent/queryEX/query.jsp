<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>HELLO NOODLE RESTERENT</title>
</head><body background="../bgpic/noodlebg.jpg">
<table width=750 align=center border=1 bgcolor="#FFF5EE">
<tr>
	<td align=center><%@ include file="../header.jsp" %>
<tr>
	<td align=center><%@ include file="../time.jsp" %>
<tr>
	<td align=center>
		<table width=400 align=center >
				<tr>
					<td align=center><a href="queryAll.jsp">全部查詢</a>
				<tr>
					<td align=center><a href="queryDesk.jsp">依桌號查詢</a>
				<tr>
					<td align=center><a href="querySum.jsp">依總金額查詢</a>
				<tr>
					<td align=center><a href="queryID.jsp">依單號查詢</a>
				<tr>
					<td align=center>
						<a href="../index.jsp">回主頁面</a>
			</table>

<tr>
	<td align=center><%@ include file="../footer.jsp" %>
</table>
</body>
</html>