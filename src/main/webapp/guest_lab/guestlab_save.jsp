<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*, java.util.*"  %>
<% request.setCharacterEncoding("UTF-8"); %>    
<%@ include file="guestlab_conn_oracle.jsp" %>
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

	stmt=conn.createStatement();
	sql="INSERT into guestlab(idx,ename,phone, gender, addr) values('"+id+"','"+en+"','"+pon+"','"+gen+"','"+add+"')";
	
	int cnt=0;
	cnt=stmt.executeUpdate(sql);
	out.println(cnt);

	if(cnt>0){
		out.println("DB에 잘 insert되었습니다");
	}else{
		out.println("DB에 저장을 실패했습니다.");
	}
	
%>    
    
    
    
    
    
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>