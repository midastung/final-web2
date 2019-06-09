<%@ page language="java" contentType="text/html; charset=utf-8"%>
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
		<td colspan="2" style="width: 70rem"><center>訂單管理</center></td>
	</tr>
	<tr>
		<td><a href="bk_member.jsp">會員管理</a></td>
		<td colspan="2" rowspan="4" style="width: 70rem">
			<center><table border="1" class="in">
				<tr>
					<td>訂單編號</td>
					<td>訂單數量</td>
					<td>會員帳號</td>
					<td>訂單地址</td>
                    <td>訂單電話</td>
					<td>刪除</td>
				</tr>
<%
                sql="SELECT * FROM list_shopping;";
				ResultSet tmp=con.createStatement().executeQuery(sql);
                while(tmp.next())
                {
                  out.println("<tr>");
                  out.println("<td>"+tmp.getString("l_id")+"</td>");
                  out.println("<td>"+tmp.getString("l_number")+"</td>");
                  out.println("<td>"+tmp.getString("m_account")+"</td>");
                  out.println("<td>"+tmp.getString("l_address")+"</td>");
                  out.println("<td>"+tmp.getString("l_cellphone")+"</td>");
                  out.println("<td>"+"<a href='del_order.jsp?lid="+tmp.getString("l_id")+"'>"+"刪除"+"</a>"+"</td>");
                  out.println("</tr>");
                }
                  con.close();
%>
			    <!--<tr>
			    	<td>1</td>
					<td>6/15</td>
					<td>ym</td>
					<td>商品編號</td>
                    <td>訂購數量</td>
					<td>訂購總價</td>
					<td>訂購地點</td>
				</tr>

			    <tr>
			    	<td>2</td>
					<td>6/15</td>
					<td>ym</td>
					<td>商品編號</td>
                    <td>訂購數量</td>
					<td>訂購總價</td>
					<td>訂購地點</td>
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

<center><table border="1" class="under">
  <tr><td colspan="3" style="width: 80rem">訂單資料</td></tr>
                  
  <form action="add_order.jsp" method="post">
  <tr>
  	<td>訂單編號(必填)</td>
  	<td colspan="2"><textarea style="width: 90%;" name="lid"></textarea></td>
  </tr>
  <tr>
  	<td>訂單數量(必填)</td>
  	<td colspan="2"><textarea style="width: 90%;" name="lnumber"></textarea></td>
  </tr>
  <tr>
  	<td>會員帳號</td>
  	<td colspan="2"><textarea style="width: 90%;" name="maccount"></textarea></td>
  </tr>
    <tr>
  	<td>訂單地址</td>
  	<td colspan="2"><textarea style="width: 90%;" name="laddress"></textarea></td>
  </tr>
    <tr>
  	<td>訂單電話</td>
  	<td colspan="2"><textarea style="width: 90%;" name="lcellphone"></textarea></td>
  </tr>
  <tr>
  <td colspan="3">
    <button>新增訂單</button>
  </td>
  </tr>
</form>
</table></center>
</body>
</html>
