<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp"%>
<html>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String [] maccount=null;
		String [] mpassword=null;
		String [] mfirstname=null;
		String [] mlastname=null;
		String [] maddress=null;
		String [] mEmail=null;
		String [] mlevel=null;
		String [] mhead=null;
		String [] mtel=null;

		try
		{
			maccount=request.getParameterValues("m_account");
			mpassword=request.getParameterValues("m_password");
			mfirstname=request.getParameterValues("m_firstname");
		    mlastname=request.getParameterValues("m_lastname");
		    maddress=request.getParameterValues("m_address");
		    mEmail=request.getParameterValues("m_Email");
		    mlevel=request.getParameterValues("m_level");
		    mhead=request.getParameterValues("m_head");
		    mtel=request.getParameterValues("m_tel");
			for(int i=0;i<maccount.length;i++)
			{	
			
			sql="UPDATE member SET m_password='"+mpassword[i]+"',m_firstname='"+mfirstname[i]+"',m_lastname='"+mlastname[i]+"',m_address='"+maddress[i]+"',m_Email='"+mEmail[i]+"',m_level='"+mlevel[i]+"',m_head='"+mhead[i]+"',m_tel='"+mtel[i]+"' WHERE m_account='"+maccount[i]+"'";
			con.createStatement().executeUpdate(sql); 
			}
			out.write("<script language=javascript>alert('修改完成');</script>");
			response.setHeader("refresh","0;URL=back_member.jsp");
		
		}
		catch(Exception e)
		{
			out.write("<script language=javascript>alert('修改錯誤');</script>");
			response.setHeader("refresh","0;URL=back_member.jsp");
		}		
	

	con.close();
	%>
</body>
</html>
