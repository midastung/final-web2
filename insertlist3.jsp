<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>

<%
	String l_memo = request.getParameter("comment");
	String m_firstname = request.getParameter("fname");
	String m_lastname = request.getParameter("lname");
	String m_account = request.getParameter("acc");
	String l_idd = request.getParameter("lidd");

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