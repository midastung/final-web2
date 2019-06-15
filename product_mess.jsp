<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp" %>
<body>
	<%
	    request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String message = request.getParameter("message");
		String pid = request.getParameter("pid");
		String str = request.getParameter("str");

		if(name==null||name.equals("")||message==null||message.equals(""))
		{
			out.write("<script language=javascript>alert('資料請填寫完整');</script>");
			response.setHeader("refresh","0;URL=all_single.jsp?p_id="+pid+"");
		}
		else 
		{
			sql="INSERT INTO list_shopping(l_name,message,p_id,l_boolean,stars) value('"+name+"','"+message+"','"+pid+"','1','"+str+"');";
			con.createStatement().executeUpdate(sql); 
			out.write("<script language=javascript>alert('感謝您的回饋');</script>");
			response.setHeader("refresh","0;URL=all_single.jsp?p_id="+pid+"");
		}
	%>
</body>