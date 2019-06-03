<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@include file="getDB.jsp" %>
<html>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
    Connection con=DriverManager.getConnection(url,"root","1234"); 
    out.print(con);
    String sql="SELECT m_name FROM member WHERE m_account='"+acc+"'and m_password='"+pas+"'";
    ResultSet tmp=con.createStatement().executeQuery(sql)
    String a = tmp.getString("m_level");
    out.print(a);
    out.print(123);
%>
123
</body>
</html>
