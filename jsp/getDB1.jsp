<%@ page import = "java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";

    Connection con=DriverManager.getConnection(url,"root","1234"); 
    String sql = "SELECT * FROM member" ;
    Statement a = con.createStatement();
    ResultSet tmp=a.executeQuery(sql);
    if (tmp.next())
    {
    out.print(tmp.getString("m_level"));
    }
   
%>