<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp" %>
<body>
	<%
	    response.setCharacterEncoding("big5");
	    response.setCharacterEncoding("UTF-8");
	    request.setCharacterEncoding("big5");
	    request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String message = request.getParameter("content");
		String pid = request.getParameter("pid");

		if(name==null||name.equals("")||message==null||message.equals(""))
		{
			out.write("<script language=javascript>alert('資料請填寫完整');</script>");
			response.setHeader("refresh","0;URL=all_products.jsp");
		}
		else 
		{
			sql="INSERT INTO list_shopping(l_name,message,p_id) value('"+name+"','"+message+"','"+pid+"');";
			con.createStatement().executeUpdate(sql); 
			out.write("<script language=javascript>alert('感謝您的回饋');</script>");
			response.setHeader("refresh","0;URL=all_products.jsp");
		}
	%>
</body>