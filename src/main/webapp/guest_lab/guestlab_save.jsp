<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*, java.util.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ include file="guestlab_conn_oracle.jsp"%>
<% 
	String id=request.getParameter("idx");
	String en=request.getParameter("ename");
	String pon=request.getParameter("phone");
	String gen=request.getParameter("gender");
	String add=request.getParameter("addr");
%>
<%
	out.println("ID :" +id+"<p/>");
	out.println("이름 :" +en+"<p/>");
	out.println("핸드폰 번호 :" +pon+"<p/>");
	out.println("성별 :" +gen+"<p/>");
	out.println("주소 :" +add+"<p/>");
%>
<%
		
	String sql=null;
	Statement stmt=null;
	
	try{
		stmt=conn.createStatement();
		sql="INSERT into guestlab(idx,ename,phone, gender, addr) values('"+id+"','"+en+"','"+pon+"','"+gen+"','"+add+"')";
		out.println(sql);
		stmt.executeQuery(sql);	
	}
	catch (Exception e){
		out.println("DataBase Insert 중 문제가 발생  되었습니다. <p/>");
		out.println("고객센터 : 02-1111-1111로 문의 바랍니다");
		e.printStackTrace();
	}finally{
		if(conn!=null){
			conn.close();
		}
		if(stmt !=null){
			stmt.close();
		}
	}
%>
<jsp:forward page="gueestlab_show03.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>