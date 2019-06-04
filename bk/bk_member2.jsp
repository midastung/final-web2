<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>後台介面</title>
	<style type="text/css" media="screen">
	.in td
{
	width: 10rem;
	text-align:center;
}
 .out td
 {
 	width: 5rem;
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
			<center><table border="1" class="in">
				<tr>
					<td>帳號</td>
					<td>密碼</td>
					<td>姓氏</td>
					<td>名字</td>
					<td>身分</td>
					<td>地址</td>
					<td>電郵</td>
					<td>電話</td>
					<td>增減</td>
				</tr>

			    <tr>
					<td>y</td>
					<td>m</td>
					<td>chen</td>
					<td>ym</td>
					<td>一般會員0</td>
					<td>三重</td>
					<td>peter880118@gmail.com</td>
					<td>0920218763</td>
					<td><button>刪除會員</button></td>
				</tr>
			</table></center>
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