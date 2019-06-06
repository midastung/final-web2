<%@ page import = "java.sql.*, java.util.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost/shop?serverTimezone=UTC";
    Connection con=DriverManager.getConnection(url,"root","1234"); 
    String sql="";
    con.createStatement().execute(sql);
%>