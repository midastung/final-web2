<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
</style>
</head>
<body>
<center><table border="1" class="out">
	<tr>
		<td></td>
		<td colspan="2" style="width: 70rem"><center><a href="bk_index1.jsp">管理者介面</a></center></td>
	</tr>
	<tr>
		<td><a href="bk_member2.jsp">會員管理</a></td>
		<td colspan="2" rowspan="3" style="width: 70rem">
			<center><span><a href="index1.jsp">回到前台首頁</a></span></center>
		</td>
	</tr>
	<tr>
		<td><a href="bk_order3.jsp">訂單管理</a></td>
	</tr>
	<tr>
		<td><a href="bk_product4.jsp">商品管理</a></td>
	</tr>
</table>
</center>
</body>
</html>