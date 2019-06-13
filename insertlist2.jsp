<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*, java.util.*" %>
<%@ include file="getDB.jsp" %>

<%
   	String firstname = request.getParameter("firstname");
   	String email = request.getParameter("email");
    String tel = request.getParameter("tel");
    String address = request.getParameter("address");
    String country = request.getParameter("country");
    String memo = request.getParameter("memo");
    String payment = request.getParameter("payment");
    ResultSet rs=null;
    ResultSet rs2 = null;
   	String acc="";
    String pas="";
    int rr=0;
    String[] idd=null;
    String[] number=null;
    idd=request.getParameterValues("pdid");
    number=request.getParameterValues("amt");
    rs2=con.createStatement().executeQuery("select * from list_shopping,product where list_shopping.p_id=product.p_id");
    rs2.next();
   

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
        {}

    

      if(acc==null||acc.equals("")||pas==null||pas.equals(""))
        {
          out.write("<script language=javascript>alert('請先登入');</script>");
          response.setHeader("refresh","0;URL=index.jsp") ;
        }
      else
        {
          Random rd=new Random();
          rr=rd.nextInt(89999)+10001;
          boolean gogo=true;
            while(gogo)
            {
              sql="select * from list_shopping where l_idd='"+rr+"' ";
              rs=con.createStatement().executeQuery(sql);
              if(rs.next())
                {
                  rr=rd.nextInt(89999)+10001;
                }
              else
                {
                  gogo=false;
                }
            }
      
            for(int i=0;i<idd.length;i++)
            {
              sql="select * from product where p_id='"+idd[i]+"';";
              rs=con.createStatement().executeQuery(sql);
              rs.next();
              sql="INSERT INTO list_shopping (p_id,m_account,l_name, l_email, l_address, l_country, l_cellphone, l_memo, l_payment, l_idd,l_number,l_totalprice) VALUES ('"+idd[i]+"','"+acc+"','"+firstname+"','"+email+"','"+address+"','"+country+"','"+tel+"','"+memo+"','"+payment+"','"+rr+"','"+number[i]+"','"+String.valueOf(Integer.valueOf(number[i])*Integer.valueOf(rs.getString("p_price")))+"')"; 
              con.createStatement().execute(sql);

              sql="UPDATE product SET p_stock ='"+(Integer.valueOf(rs.getString("p_stock"))-Integer.valueOf(number[i]))+"' WHERE (p_id = '"+idd[i]+"');";
              con.createStatement().execute(sql);

              sql="UPDATE product SET p_hot ='"+(Integer.valueOf(rs.getString("p_hot"))+Integer.valueOf(number[i]))+"' WHERE (p_id = '"+idd[i]+"');";
              con.createStatement().execute(sql);
            }

             sql="SELECT * FROM shopping_cart where m_account='"+acc+"'";
             rs=con.createStatement().executeQuery(sql);
             while(rs.next())
             {
              sql="DELETE FROM shopping_cart WHERE (p_id ='"+rs.getString("p_id")+"');";
              con.createStatement().execute(sql);
             }
             response.setHeader("refresh","0;URL=confirm_cart.jsp?lidd="+rr+"") ;
            
    }
%>

                                        