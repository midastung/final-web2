<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page pageEncoding="utf-8"%>
<%@page import="java.util.*,java.io.*"%>
<%@include file="getDB.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>後台介面</title>
<style type="text/css" media="screen">
td
 {
 	text-align:center;
 }
a
 {
  text-decoration:none;
 }
.in td
{
	width: 10rem;
	height: 5rem;
}	
.out td
 {
	width: 10rem;
	height: 5rem;
 }
 button
 {
   height: 1.5rem;
   float: right;
   margin-left: 3rem;
 }
 .under td
 {
	width: 10rem;
	height: 2rem;
 }
</style>
</head>
<body>
<center><table border="1" class="out">
	<tr>
		<td><center><a href="bk_index.jsp">管理者介面</a></center></td>
		<td colspan="2" style="width: 70rem"><center>會員管理</center></td>
	</tr>
	<tr>
		<td><a href="bk_member.jsp">會員管理</a></td>
		<td colspan="2" rowspan="4" style="width: 70rem">
			<center><table border="1" class="in">
				<tr>
					<td>帳號</td>
					<td>密碼</td>
					<td>名字</td>
					<td>姓氏</td>
					<td>地址</td>
					<td>電郵</td>
					<td>權限</td>
					<td>稱謂</td>
					<td>電話</td>
					<td>刪除</td>
				</tr>
<%
                ResultSet tmp=con.createStatement("SELECT * FROM member");
                while(tmp.next())
                {
                  out.println("<tr>");
                  out.println("<td>"+tmp.getString("m_account")+"</td>");
                  out.println("<td>"+tmp.getString("m_password")+"</td>");
                  out.println("<td>"+tmp.getString("m_firstname")+"</td>");
                  out.println("<td>"+tmp.getString("m_lastname")+"</td>");
                  out.println("<td>"+tmp.getString("m_address")+"</td>");
                  out.println("<td>"+tmp.getString("m_mail")+"</td>");
                  out.println("<td>"+tmp.getString("m_level")+"</td>");
                  out.println("<td>"+tmp.getString("m_head")+"</td>");
                  out.println("<td>"+tmp.getString("m_tel")+"</td>");
                  out.println("<td>"+"<a href='delete.jsp?m_account="+tmp.getString("m_account")+">"+"刪除"+"</a>"+"</td>");
                  out.println("</tr>");
                }
                  con.close();
%>
			    <!--<tr>
					<td>y</td>
					<td>m</td>
					<td>ym</td>
					<td>chen</td>
					<td>三重</td>
					<td>peter880118@gmail.com</td>
					<td>1</td>
					<td>管理者</td>
					<td>0920218763</td>
				</tr>!-->
			</table></center>
		</td>
	</tr>
	<tr>
		<td><a href="bk_order.jsp">訂單管理</a></td>
	</tr>
	<tr>
		<td><a href="bk_product.jsp">商品管理</a></td>
	</tr>
	<tr>
		<td><a href="bk_comment.jsp">評論管理</a></td>
	</tr>
</table></center>
</body>
  <script type="text/javascript">
    var mem = document.getElementsByClassName('confirmation');
    var confirmIt = function (e) 
    {
        if (!confirm('確定刪除此會員？')) e.preventDefault();
    };
    for (var i = 0, l = mem.length; i < l; i++) 
    {
        mem[i].addEventListener('click', confirmIt, false);
    }
</script>
</html>