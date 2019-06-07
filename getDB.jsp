<%@ page import = "java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost/shop?serverTimezone=UTC";
    String sql="";
    Connection con=DriverManager.getConnection(url,"root","1234"); 
    con.createStatement().execute(sql);
%>