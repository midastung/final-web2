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
					<td>下單日期</td>
					<td>會員帳號</td>
					<td>商品編號</td>
                    <td>訂購數量</td>
					<td>訂購總價</td>
					<td>訂購地點</td>
				</tr>

			    <tr>
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
				</tr>
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
  	<td>訂單編號</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
  <tr>
  	<td>會員帳號</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
  <tr>
  	<td>商品編號</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
    <tr>
  	<td>商品數量</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
    <tr>
  	<td>商品總價</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
    <tr>
  	<td>訂購地點</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
  <tr>
  <td colspan="3">
  	<button>新增訂單</button>
    <button>修改訂單</button>
    <button>刪除訂單</button>
  </td>
  </tr>
</table></center>
</body>
</html>