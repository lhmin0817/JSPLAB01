<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*, java.util.*"%>
<%@ include file="guestlab_conn_oracle.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {
	width: 500px;
	margin: 0 auto;
}

table, tr, td {
	padding: 10px;
	border-collapse: collapse;
}
</style>
</head>
<body>

	<%
	String sql = null;
	Statement stmt = null;
	ResultSet rs = null;

	sql = "select * from guestlab order by ename desc";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);

	if (rs.next()) {
		do {
	%>
	<div>
		<table width="300px" border="1px">
			<tr>
				<td colspan="2" align="center">인적사항</td>
			</tr>
			<tr>
				<td colspan="2">id : <%=rs.getString("idx")%></td>
			</tr>
			<tr>
				<td>이름 : <%=rs.getString("ename")%></td>
				<td>성별 : <%=rs.getString("gender")%></td>
			</tr>
			<tr>
				<td colspan="2">핸드폰 번호 : <%=rs.getString("phone")%></td>
			</tr>
			<tr>
				<td colspan="2">주소 : <%=rs.getString("addr")%></td>
			</tr>
		</table>
		<p />
		<p />
	</div>
	<%
	} while (rs.next());
	} else {
	out.println("오류 발생");
	}
	%>
	<div>
		<a href="dbgb_write.html"><img src="images/write.gif"
			width="100px"></a>

	</div>
</body>
</html>