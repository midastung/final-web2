<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp"%>
<html>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String [] mid=null;
		String [] maccount=null;
		String [] mpassword=null;
		String [] mfirstname=null;
		String [] mlastname=null;
		String [] maddress=null;
		String [] mEmail=null;
		String [] mlevel=null;
		String [] mhead=null;
		String [] mtel=null;

			mid=request.getParameterValues("mid");
			maccount=request.getParameterValues("maccount");
			mpassword=request.getParameterValues("mpassword");
			mfirstname=request.getParameterValues("mfirstname");
		    mlastname=request.getParameterValues("mlastname");
		    maddress=request.getParameterValues("maddress");
		    mEmail=request.getParameterValues("memail");
		    mlevel=request.getParameterValues("mlevel");
		    mhead=request.getParameterValues("mhead");
		    mtel=request.getParameterValues("mtel");
			for(int i=0;i<mid.length;i++)
			{	
			
			sql="UPDATE member SET m_password='"+mpassword[i]+"',m_firstname='"+mfirstname[i]+"',m_lastname='"+mlastname[i]+"',m_address='"+maddress[i]+"',m_email='"+mEmail[i]+"',m_level='"+mlevel[i]+"',m_head='"+mhead[i]+"',m_tel='"+mtel[i]+"' WHERE m_id='"+mid[i]+"'";
			con.createStatement().executeUpdate(sql); 
			}
			out.write("<script language=javascript>alert('修改成功');</script>");
			response.setHeader("refresh","0;URL=back_member.jsp");
		
	

	con.close();
	%>
</body>
</html>
