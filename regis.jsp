<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp" %>
<body>
	<%
	    request.setCharacterEncoding("UTF-8");
		String acc=request.getParameter("acc");
		String pas=request.getParameter("pas");

		if(acc==null||acc.equals("")||pas==null||pas.equals(""))
		{
			out.write("<script language=javascript>alert('帳號、密碼輸入錯誤');</script>");
			response.setHeader("refresh","0;URL=index.jsp");
		}
		else 
		{
			sql="INSERT INTO member(m_account,m_password,m_level,m_firstname,m_head) values('"+acc+"','"+pas+"','"+"0"+"','"+acc+"','"+"member"+"');";
			con.createStatement().execute(sql); 
			out.write("<script language=javascript>alert('註冊成功');</script>");
			response.setHeader("refresh","0;URL=index.jsp");
		}
	%>
</body>