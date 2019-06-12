<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*, java.util.*" %>
<%@ include file="getDB.jsp" %>

<%
   	String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");
   	String email = request.getParameter("email");
    String tel = request.getParameter("tel");
    String address = request.getParameter("address");
    String country = request.getParameter("country");
    String memo = request.getParameter("memo");
    String payment = request.getParameter("payment");

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

    	sql=" INSERT INTO list_shopping (l_name, l_email, l_address, l_country, l_cellphone, l_payment) VALUES ('"+firstname+lastname+"','email','tel','address','country','memo','payment') ";
  		con.createStatement().execute(sql);
  		response.sendRedirect("order_cart.jsp");

%>

                                        