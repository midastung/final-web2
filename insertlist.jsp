<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*, java.util.*" %>
<%@ include file="getDB.jsp" %>

<%
   	String amount = request.getParameter("amount");
   	String p_price = request.getParameter("p_price");
    String pid = request.getParameter("pid");
   	String acc="";
    String pas="";
	
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
    	sql="UPDATE shopping_cart SET amount='"+amount+"' WHERE p_id='"+pid+"' AND m_account='"+acc+"'";
  		con.createStatement().execute(sql);
  		response.sendRedirect("order_cart.jsp");

%>

                                        