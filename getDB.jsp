<%@ page import = "java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost/?serverTimezone=UTC&characterEncoding=UTF-8";
    String sql="use shop2";
    Connection con=DriverManager.getConnection(url,"root","1234"); 
    con.createStatement().execute(sql);
%>