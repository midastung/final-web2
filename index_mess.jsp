<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp" %>
<body>
	<%
	    response.setCharacterEncoding("big5");
	    response.setCharacterEncoding("UTF-8");
	    request.setCharacterEncoding("big5");
	    request.setCharacterEncoding("UTF-8");
		String acc=request.getParameter("acc");
		String pas=request.getParameter("pas");

		if(fullname==null||fullname.equals("")||message==null||messagee.equals(""))
		{
			out.write("<script language=javascript>alert('欄位皆必須填寫');</script>");
			response.setHeader("refresh","0;URL=index.jsp");
		}
		else 
		{
			sql="INSERT INTO indexmess(fullname,messagee) values('"+fullname+"','"+message+"');";
			con.createStatement().execute(sql); 
			out.write("<script language=javascript>alert('感謝您的回饋');</script>");
			response.setHeader("refresh","0;URL=index.jsp");
		}
	%>
</body>