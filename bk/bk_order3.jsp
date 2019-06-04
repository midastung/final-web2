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
					<td>下單日期</td>
					<td>商品編號</td>
					<td>商品價格</td>
					<td>訂購數量</td>
					<td>新增訂單</td>
					<td>修改訂單</td>
					<td>刪除訂單</td>
				</tr>

			    <tr>
					<td>6/15</td>
					<td>xxx</td>
					<td>xxx</td>
					<td>xxx</td>
				    <td><button>新增訂單</button></td>
					<td><button>修改訂單</button></td>
					<td><button>刪除訂單</button></td>
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