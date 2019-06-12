<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp" %>
<body>
	<%
        request.setCharacterEncoding("utf-8");
		String fullname = request.getParameter("fullname");
		String message = request.getParameter("message");

		if(fullname==null||fullname.equals("")||message==null||message.equals(""))
		{
			out.write("<script language=javascript>alert('資料請填寫完整');</script>");
			response.setHeader("refresh","0;URL=index.jsp");
		}
		else 
		{
			sql="INSERT INTO indexmess(fullname,message) value('"+fullname+"','"+message+"');";
			con.createStatement().executeUpdate(sql); 
			out.write("<script language=javascript>alert('感謝您的回饋');</script>");
			response.setHeader("refresh","0;URL=index.jsp");
		}
	%>
</body>