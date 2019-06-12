<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp" %>
<body>
	<%
        request.setCharacterEncoding("utf-8");
		String pid=request.getParameter("pid");
		String pclass=request.getParameter("pclass");
		String pname=request.getParameter("pname");
		String pstock=request.getParameter("pstock");
		String pprice=request.getParameter("pprice");
		String poriginprice=request.getParameter("poriginprice");
		String pdiscount=request.getParameter("pdiscount");
		String pimage=request.getParameter("pimage");

		if(pid==null||pid.equals("")||pname==null||pname.equals("")||pstock==null||pstock.equals("")||poriginprice==null||poriginprice.equals(""))
		{
			out.write("<script language=javascript>alert('必填欄位不能為空');</script>");
			response.setHeader("refresh","0;URL=back_product.jsp");
		}
		else 
		{
			String sql2="select * from product where p_id='"+pid+"';";
			ResultSet a=con.createStatement().executeQuery(sql2);
			if(a.next())
			{
	        sql="UPDATE product SET p_class="+pclass+" , p_name="+pname+" , p_stock="+pstock+" , p_price="+pprice+" , p_originprice="+poriginprice+" , p_discount="+pdiscount+" , p_image="+pimage+" where p_id='"+pid+"';";
	        con.createStatement().executeUpdate(sql);
	        out.write("<script>alert('修改商品成功');</script>");
            response.setHeader("refresh","0;URL=back_product.jsp");
			}
			else
			{
			sql="INSERT INTO product(p_id,p_class,p_name,p_stock,p_price,p_originprice,p_discount,p_image) values('"+pid+"','"+pclass+"','"+pname+"','"+pstock+"','"+pprice+"','"+poriginprice+"','"+pdiscount+"','"+pimage+"');";
            con.createStatement().execute(sql); 
			out.write("<script language=javascript>alert('建立成功');</script>");
			response.setHeader("refresh","0;URL=back_product.jsp");
		    }
		}
	%>
</body>
