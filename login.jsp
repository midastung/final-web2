<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp" %>
<body>
	<%
	 String acc="";
     String pas="";
	acc=request.getParameter("acc");
	pas=request.getParameter("psd");

	try
	{
		if(acc==null||acc.equals("")||pas==null||pas.equals(""))
		{
			sql="select * from member where m_account=? and m_password=?";
			PreparedStatement midas=null;
			midas=con.prepareStatement(sql);
			midas.setString(1,request.getParameter("acc"));
			midas.setString(2,request.getParameter("psd"));

			ResultSet paperrs=midas.executeQuery();

			if(paperrs.next())
			{
				session.setAttribute("id",request.getParameter("id"));
				response.sendRedirect("index.jsp");
			}
			else
			{
				out.write("<script language=javascript>alert('帳號或密碼輸入錯誤');</script>");
				response.setHeader("refresh","0;URL=index.jsp");
			}
		}	
		else 
		{
			sql="SELECT * FROM member WHERE m_account='"+acc+"' and m_password='"+pas+"'";
			ResultSet tmp=con.createStatement().executeQuery(sql);
			tmp.next();
			if(tmp.getString("m_level").equals("0"))
			{
				Cookie ck=new Cookie("getin",tmp.getString("m_account")+"-"+tmp.getString("m_password"));
				ck.setMaxAge(60*60*24*7);
				response.addCookie(ck);
				session.setAttribute("in",acc);
				out.write("<script language=javascript>alert('登入成功');</script>");
				response.setHeader("refresh","0;URL=index.jsp");
				
			}
			else if(tmp.getString("m_level").equals("1"))
			{
				Cookie ck=new Cookie("getin",tmp.getString("m_account")+"-"+tmp.getString("m_password"));
				ck.setMaxAge(60*60*24*7);
				response.addCookie(ck);
				session.setAttribute("in",acc);
				out.write("<script language=javascript>alert('進入管理員介面');</script>");
				response.setHeader("refresh","0;URL=index.jsp");
			}
		    else
			{
				out.write("<script language=javascript>alert('帳號或密碼輸入錯誤');</script>");
				response.setHeader("refresh","0;URL=index.jsp");
		    }
		}
	}
	catch(Exception e)
	{
			out.write("<script language=javascript>alert('帳號或密碼輸入錯誤');</script>");
			response.setHeader("refresh","0;URL=index.jsp");
	}

	try
	{
		if(request.getParameter("acc") !=null && request.getParameter("pas")!=null)
		{
			sql="SELECT * FROM member WHERE m_account='"+acc+"'=? AND m_password='"+pas+"'=? ";
			PreparedStatement pstmt = null;
			pstmt = con.prepareStatement(sql);
			pstmt.setString(2,request.getParameter("acc")); //2=m_account
			pstmt.setString(3,request.getParameter("pas")); //3=m_password

			ResultSet rs = pstmt.executeQuery();

			if(rs.next())
			{
				session.setAttribute("acc",request.getParameter("acc"));
				response.sendRedirect("index.jsp");
			}
			else
			{
				out.println("密碼賬號不符！！<a href='login.jsp'>按此</a>重新登入");
			}
		}
	}
	catch(Exception e)
	{}

con.close();
%>


</body>
