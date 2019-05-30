<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp" %>
<head>
	<title>註冊</title>
</head>
<body bgcolor="#000000;">
	<div style="position: fixed;left:80%;width: 20%;height: 100%;background-color:#605A56;">
	<form action="regis.jsp" method="POST">
		<table>
			<tr>
				<td colspan='2'><h1 align="center">註冊</h1></td>
			</tr>
			<tr>
				<td>名字:</td>
				<td><input type="text" name="r_name"></input></td>
			</tr>
			<tr>
				<td>帳號:</td>
				<td><input type="text" name="r_acc"></input></td>
			</tr>
			<tr>
				<td>密碼:</td>
				<td><input type="text" name="r_pas"></input></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="確認"></td>
				<td><input type="reset" value="重設"></input></td>
			</tr>
			<tr>
				<td><input type="button" value="返回首頁" onclick="localtion.href='index.jsp'"></td>
			</tr>
		</table>
	</form>		
	</div>
</body>
</html>