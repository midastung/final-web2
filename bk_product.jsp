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
		<td colspan="2" style="width: 70rem"><center>商品管理</center></td>
	</tr>
	<tr>
		<td><a href="bk_member.jsp">會員管理</a></td>
		<td colspan="2" rowspan="4" style="width: 70rem">
			<center><table border="1" class="in">
				<tr>
					<td>商品編號</td>
					<td>商品類別</td>
					<td>商品名稱</td>
					<td>商品數量</td>
					<td>商品單價</td>
					<td>商品原價</td>
					<td>商品折扣</td>
                    <td>商品圖片</td>
				</tr>
<%
                sql="SELECT * FROM product;";
				tmp=con.createStatement().executeQuery(sql);
                while(tmp.next())
                {
                  out.println("<tr>");
                  out.println("<td>"+tmp.getString("p_id")+"</td>");
                  out.println("<td>"+tmp.getString("p_class")+"</td>");
                  out.println("<td>"+tmp.getString("p_name")+"</td>");
                  out.println("<td>"+tmp.getString("p_stock")+"</td>");
                  out.println("<td>"+tmp.getString("p_price")+"</td>");
                  out.println("<td>"+tmp.getString("p_originprice")+"</td>");
                  out.println("<td>"+tmp.getString("p_discount")+"</td>");
                  out.println("<td>"+tmp.getString("p_image")+"</td>");
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
  <tr>
  	<td>商品編號</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
  <tr>
  	<td>商品分類</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
  <tr>
  	<td>商品名稱</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
    <tr>
  	<td>商品數量</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
    <tr>
  	<td>商品單價</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
    <tr>
  	<td>商品原價</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
    <tr>
  	<td>商品折扣</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
    <tr>
  	<td>商品圖片</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
  <tr>
  <td colspan="3">
    <button>刪除訂單</button>
  </td>
  </tr>
</table></center>
</body>
</html>