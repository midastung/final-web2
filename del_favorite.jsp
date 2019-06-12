<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@include file="getDB.jsp"%>
<%	
	String pid=request.getParameter("p_id");
	sql="delete from love where p_id='"+pid+"';";
	con.createStatement().executeUpdate(sql);
    response.sendRedirect("favorite_content.jsp");
%> 