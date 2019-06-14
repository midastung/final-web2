<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="getDB.jsp"%>

<%
	String q = request.getParameter("quantity");
	String p_id = request.getParameter("p_id");
	String acc = "";
	String pas = "";
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

%>
<%
			sql="INSERT INTO shopping_cart(p_id, amount, m_account) VALUE('"+p_id+"','"+q+"','"+acc+"');";
            con.createStatement().execute(sql);

            out.write("<script language=javascript>alert('成功將"+rs2.getString("p_name")+"x"+q+"加入購物車!');</script>");

	response.setHeader("refresh","0;URL=all_single.jsp?p_id="+p_id+"");
%>