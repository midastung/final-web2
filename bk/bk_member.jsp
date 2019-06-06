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
				</tr>

			    <tr>
					<td>y</td>
					<td>m</td>
					<td>ym</td>
					<td>chen</td>
					<td>三重</td>
					<td>peter880118@gmail.com</td>
					<td>1</td>
					<td>管理者</td>
					<td>0920218763</td>
				</tr>

				<tr>
					<td>x</td>
					<td>x</td>
					<td>xxx</td>
					<td>xxx</td>
					<td>xxx</td>
					<td>xxx@gmail.com</td>
					<td>0</td>
					<td>一般會員</td>
					<td>09xxx</td>
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
  <tr><td colspan="3" style="width: 80rem">會員資料</td></tr>
  <tr>
  	<td>會員帳號</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
  <tr>
  	<td>會員密碼</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
  <tr>
  	<td>會員地址</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
    <tr>
  	<td>會員電郵</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
    <tr>
  	<td>會員電話</td>
  	<td colspan="2"><textarea style="width: 90%;"></textarea></td>
  </tr>
  <tr>
  <td colspan="3">
  	<button>新增會員</button>
    <button>修改會員</button>
    <button>刪除會員</button>
  </td>
  </tr>
</table></center>
</body>
</html>