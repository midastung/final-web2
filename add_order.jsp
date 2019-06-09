<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp" %>
<body>
	<%
	    response.setCharacterEncoding("big5");
	    response.setCharacterEncoding("UTF-8");
	    request.setCharacterEncoding("big5");
	    request.setCharacterEncoding("UTF-8");
		String lid=request.getParameter("lid");
		String lnumber=request.getParameter("lnumber");

		if(lid==null||lid.equals("")||lnumber==null||lnumber.equals(""))
		{
			out.write("<script language=javascript>alert('必填欄位不能為空');</script>");
			response.setHeader("refresh","0;URL=bk_order.jsp");
		}
		else 
		{
			String sql2="select * from list_shopping where l_id='"+lid+"';";
			ResultSet a=con.createStatement().executeQuery(sql2);
			if(a.next())
			{
				out.write("<script language=javascript>alert('訂單重複');</script>");
				response.setHeader("refresh","0;URL=bk_order.jsp");
			}
			else
			{
			sql="INSERT INTO list_shopping(l_id,l_number) values('"+lid+"','"+lnumber+"');";
			con.createStatement().execute(sql); 
			out.write("<script language=javascript>alert('下單成功');</script>");
			response.setHeader("refresh","0;URL=bk_order.jsp");
		    }
		}
	%>
</body>