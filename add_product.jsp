<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp" %>
<body>
	<%
	    response.setCharacterEncoding("big5");
	    response.setCharacterEncoding("UTF-8");
	    request.setCharacterEncoding("big5");
	    request.setCharacterEncoding("UTF-8");
		String pid=request.getParameter("pid");
		String pclass=request.getParameter("pclass");
		String pname=request.getParameter("pname");
		String pstock=request.getParameter("pstock");
		String pprice=request.getParameter("pprice");
		String poriginprice=request.getParameter("poriginprice");
		String pdiscount=request.getParameter("pdiscount");
		String pimage=request.getParameter("pimage");

		if(pid==null||pid.equals("")||pclass==null||pclass.equals("")||pname==null||pname.equals("")||pstock==null||pstock.equals("")||poriginprice==null||poriginprice.equals(""))
		{
			out.write("<script language=javascript>alert('必填欄位不能為空');</script>");
			response.setHeader("refresh","0;URL=bk_product.jsp");
		}
		else 
		{
			String sql2="select * from product where p_id='"+pid+"';";
			ResultSet a=con.createStatement().executeQuery(sql2);
			if(a.next())
			{
				out.write("<script language=javascript>alert('商品重複');</script>");
				response.setHeader("refresh","0;URL=bk_product.jsp");
			}
			else
			{
			sql="INSERT INTO product(p_id,p_class,p_name,p_stock,p_originprice) values('"+pid+"','"+pclass+"'"+pname+"'"+pstock+"'"+poriginprice+"');";
			con.createStatement().execute(sql); 
			out.write("<script language=javascript>alert('建立成功');</script>");
			response.setHeader("refresh","0;URL=bk_product.jsp");
		    }
		}
	%>
</body>