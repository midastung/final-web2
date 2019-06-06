<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp" %>
<body>
	<%

String acc=request.getParameter("acc");
String pas=request.getParameter("pas");
if(acc==null||acc.equals("")||pas==null||pas.equals(""))
{
	out.write("<script language=javascript>alert('帳號或密碼輸入錯誤');</script>");
}
else 
{
	sql="SELECT m_account,m_password FROM member WHERE shop='"+request.getParameter("acc")+"' and m_password='"+request.getParameter("pas")+"'";
	ResultSet log=con.createStatement().executeQuery(sql);
    if(log.next())
    {
		Cookie ck=new Cookie("getin",log.getString("m_account")+"-"+log.getString("m_password"));
		ck.setMaxAge(60*60*24*7);
		response.addCookie(ck);
		response.setHeader("refresh","0;URL=index.jsp") ;
	}
    else
	{
		out.write("<script language=javascript>alert('帳號或密碼輸入錯誤');</script>");
		
		response.setHeader("refresh","0;URL=./index.jsp") ;
    }
	 
	}
con.close();
%>

</body>
