<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp"%>
<html>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String [] lid=null;
		String [] lnumber=null;
		String [] maccount=null;
		String [] laddress=null;
		String [] lcellphone=null;
		String [] lcountry=null;

			lid=request.getParameterValues("lid");
			lnumber=request.getParameterValues("lnumber");
			maccount=request.getParameterValues("maccount");
			laddress=request.getParameterValues("laddress");
		    lcellphone=request.getParameterValues("lcellphone");
		    lcountry=request.getParameterValues("lcountry");
			for(int i=0;i<lid.length;i++)
			{	
			
			sql="UPDATE list_shopping SET l_number='"+lnumber[i]+"',m_account='"+maccount[i]+"',l_address='"+laddress[i]+"',l_cellphone='"+lcellphone[i]+"',l_country='"+lcountry[i]+"' WHERE l_id='"+lid[i]+"'";
			con.createStatement().executeUpdate(sql); 
			}
			out.write("<script language=javascript>alert('修改成功');</script>");
			response.setHeader("refresh","0;URL=back_order.jsp");
		    
		    con.close();
	%>
</body>
</html>
