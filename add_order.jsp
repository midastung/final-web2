<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp" %>
<body>
	<%
        request.setCharacterEncoding("utf-8");
		String lid=request.getParameter("lid");
		String pname=request.getParameter("pname");
		String lnumber=request.getParameter("lnumber");
		String maccount=request.getParameter("maccount");
		String laddress=request.getParameter("laddress");
		String lcellphone=request.getParameter("lcellphone");
		String lcountry=request.getParameter("lcountry");

		if(lid==null||lid.equals("")||lnumber==null||lnumber.equals(""))
		{
			out.write("<script language=javascript>alert('必填欄位不能為空');</script>");
			response.setHeader("refresh","0;URL=back_order.jsp");
		}
		else 
		{
			String sql2="select * from list_shopping where l_id='"+lid+"';";
			ResultSet a=con.createStatement().executeQuery(sql2);
			if(a.next())
			{
				out.write("<script language=javascript>alert('訂單重複');</script>");
				response.setHeader("refresh","0;URL=back_order.jsp");
			}
			else
			{
			sql="INSERT INTO list_shopping(l_id,l_number,m_account,product_name,l_address,l_cellphone,l_country) values('"+lid+"','"+lnumber+"','"+maccount+"','"+pname+"','"+laddress+"','"+lcellphone+"','"+lcountry+"');";
            con.createStatement().execute(sql); 
			out.write("<script language=javascript>alert('下單成功');</script>");
			response.setHeader("refresh","0;URL=back_order.jsp");
		    }
		}
	%>
</body>