<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp" %>
<body>
	<%
	//if(session.getAttribute("getin")!=null) //check login session user not access or back to register.jsp page
	//{
 	//response.sendRedirect("welcome.jsp");
	//}
	%>
	<%
		String acc=request.getParameter("r_acc");
		String pas=request.getParameter("r_pas");
		String name=request.getParameter("r_name");
	%>
	<%
		if(acc==null||acc.equals("")||pas==null||pas.equals("")||name==null||name.equals(""))
		{
			out.write("<script language=javascript>alert('帳號、密碼或姓名輸入錯誤');</script>");
			response.sendRedirect("index.jsp");
		}
		else 
		{
			sql="INSERT INTO mid_member(m_account,m_password,m_name) values('"+acc+"','"+pas+"','"+name+"');";
			con.createStatement().execute(sql); 
			response.sendRedirect("index.jsp");
		}
	%>
</body>