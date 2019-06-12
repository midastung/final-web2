<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*, java.util.*" %>
<%@ include file="getDB.jsp"%>
<%
    request.setCharacterEncoding("utf-8");
	String acc="";
    String pas="";
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String account=request.getParameter("acc");
	String password=request.getParameter("pas");
	String address=request.getParameter("address");
	String mail=request.getParameter("mail");
	String tel=request.getParameter("tel");
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

	sql="UPDATE member SET m_firstname='"+fname+"',m_lastname='"+lname+"',m_account='"+account+"',m_password='"+password+"',m_address='"+address+"',m_email='"+mail+"',m_tel='"+tel+"' WHERE m_account='"+acc+"' and m_password='"+pas+"'";
	con.createStatement().executeUpdate(sql);
	out.write("<script language=javascript>alert('修改成功');</script>");
	response.setHeader("refresh","0;URL=member.jsp");
%>