<%@ page import = "java.sql.*, java.util.*" %>
<%@include file="getDB.jsp" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
    Connection con=DriverManager.getConnection(url,"root","1234"); 
    String sql="SELECT m_name FROM member WHERE m_account='"+acc+"'and m_password='"+pas+"'";
    ResultSet tmp=con.createStatement().executeQuery(sql);
%>
