<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 필요한 라이브러리 등록 -->
<%@ page import="java.sql.*, java.util.*"%>
<!-- DB의 값을 select해서 select한 값을 출력 -->
<%@ include file="guestlab_conn_oracle.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록의 내용을 DB에서 가져와서 출력하는 페이지</title>
<link href="filegb.css" rel="stylesheet" type="text/css">
<style>
div {
	/*border:1px solid red;
	height:300px*/
	width: 600px;
	margin: 0 auto;
}

table, tr, td {
	padding: 5px;
	border-collapse: collapse;
}
</style>
</head>
<body>
<p/><p/>
show02.jsp입니다. <p/>
	<!-- DataBase 에서 select 한 결과를 담는 변수 선언 : 방이 자동으로 늘어난다. -->
	<%

	Vector idx = new Vector(); 
	Vector ename = new Vector();
	Vector gender = new Vector();
	Vector phone = new Vector();
	Vector addr = new Vector();

	String sql = null;
	Statement stmt = null; 
	ResultSet rs = null; 

	sql = "select * from guestlab order by idx desc";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	if(rs.next()){
		do{
			idx.addElement(rs.getString("idx"));
			ename.addElement(rs.getString("ename"));
			gender.addElement(rs.getString("gender"));
			phone.addElement(rs.getString("phone"));
			addr.addElement(rs.getString("addr"));
		}while(rs.next());
	}
	for(int i=0; i<idx.size(); i++){
			
		
	%>
	<div>
		<table width="300px" border="1px">
			<tr>
				<td colspan="2" align="center">인적사항</td>
			</tr>
			<tr>
				<td colspan="2">id : <%=idx.elementAt(i) %></td>
			</tr>
			<tr>
				<td>이름 : <%=ename.elementAt(i) %></td>
				<td>성별 : <%=gender.elementAt(i) %></td>
			</tr>
			<tr>
				<td colspan="2">핸드폰 번호 : <%=phone.elementAt(i) %></td>
			</tr>
			<tr>
				<td colspan="2">주소 : <%=addr.elementAt(i) %></td>
			</tr>
		</table>
		<p />
		<p />
	</div>
<%
		
	}
%>
	<div>
		<a href="dbgb_write.html"><img src="images/write.gif" width="100px"></a>
		
	</div>
</body>
</html>