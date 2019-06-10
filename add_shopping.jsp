<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*, java.util.*" %>
<%@ include file="getDB.jsp"%>

<%
	 String acc="";
        String pas="";
      //session.setAttribute("in",acc);the memory of the logged in account
        try{
                Cookie getC[]=request.getCookies();
                for(int i=0;i<getC.length;i++)
                {
                    if(getC[i].getName().equals("getin"))
                    {
                        String[] sp=getC[i].getValue().split("-");
                        acc=sp[0];
                        pas=sp[1];
                    }
                }
        
            }
        catch(Exception e)
        {

        
        }
    
    
	String act = (String) request.getParameter("act");
	String amount = (String) request.getParameter("amount");
    String p_id = request.getParameter("p_id");
    ResultSet rs2=con.createStatement().executeQuery("SELECT * FROM product WHERE p_id='"+p_id+"'; ");
    rs2.next();
	if(act!=null)
	{
		/*total = String.valueOf(Integer.parseInt(amount)*Integer.parseInt(rs2.getString("p_price")));
       "*/
		if(act.equals("buy"))
		{
            
			sql="INSERT INTO shopping_cart(p_id, amount, m_account) VALUE('"+p_id+"','"+amount+"','"+acc+"');";
            con.createStatement().execute(sql);

            out.write("<script language=javascript>alert('成功將"+rs2.getString("p_name")+"x"+amount+"加入購物車!');</script>");         

		}

       else if(act.equals("love"))
       {
            sql="INSERT INTO favorite(p_id, m_account) VALUE('"+p_id+"','"+acc+"');";
            con.createStatement().execute(sql);

            out.write("<script >alert('成功將"+rs2.getString("p_name")+"加入收藏!');</script>");
       }
	}
    try{
        String outlink=(String)request.getParameter("outlink");
        if(outlink.equals("1"))
        {
            out.println("<script>window.open('favorite_content.jsp','_self')</script>");
        }
        else if(outlink.equals("2"))
        {
            out.println("<script>window.open('all_products.jsp','_self')</script>");
        }
    }
    catch(Exception e)
    {

    }
   
%>