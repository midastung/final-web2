<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>

<head>
    <title>會員專區</title>
    <link rel="stylesheet" type="text/css" href="assets/css/star.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style_index.css">
    <link rel="stylesheet" href="assets/css/member-area.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC:700&display=swap" rel="stylesheet">
</head>
<body>
    <!--    會員專區/開始-->

   <%   
           
                sql="SELECT * FROM member WHERE m_account='a'; ";
                ResultSet mem = con.createStatement().executeQuery(sql);
                mem.next();
%>
                      <!--    會員專區/開始-->
                        <div class="tabs p-5" style=" margin-top: 50px;">
                            <div class="tab-2">
                                <label for="tab2-1">會員專區</label>
                                <input id="tab2-1" name="tabs-two" type="radio" checked="checked">
                                <div class="p-0">
                                    <div class="p-5">
                                        <h4 class="cont mb-5">會員資料</h4>
                                        <form>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">會員等級</span>
                                                </div>
                                                <input type="text" class="form-control" value="<%=mem.getString("m_head")%>" disabled="disabled">
                                            </div>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">會員名稱</span>
                                                </div>
                                                <input type="text" class="form-control" placeholder="名字" value="<%=mem.getString("m_firstname")%>">
                                                <input type="text" class="form-control" placeholder="姓氏" value="<%=mem.getString("m_lastname")%>">
                                            </div>

                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">帳號</span>
                                                </div>
                                                <input type="text" class="form-control" placeholder="請填寫此欄位" value="<%=mem.getString("m_account")%>">
                                            </div>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">密碼</span>
                                                </div>
                                                <input type="text" class="form-control" placeholder="請填寫此欄位" value="<%=mem.getString("m_password")%>">
                                            </div>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">地址</span>
                                                </div>
                                                <input type="text" class="form-control" placeholder="請填寫此欄位" value="<%=mem.getString("m_address")%>">
                                            </div>
                                            <div class="input-group mb-4">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">電話</span>
                                                </div>
                                                <input type="text" class="form-control" placeholder="請填寫此欄位" value="<%=mem.getString("m_tel")%>">
                                            </div>
                                            <div class="text-align mt-5">
                                                <input type="submit" class="button button1" value="確認送出">
                                                &emsp;
                                                <button class="button button1" onClick="window.location.reload();">重新輸入</button>
                                            </div>

                                        </form>
                                    
                                    </div>
                                </div>
                            </div>
           
        <!--    會員專區/結束-->
        <%
            sql="select * from list_shopping,product where list_shopping.m_account='"+acc+"'and product.p_id=list_shopping.p_id order by date desc;";
            ResultSet shp=con.createStatement().executeQuery(sql);
            while(shp.next())
                            {
                                out.println("<div class='tab-2'>");
                                out.println("<label for='tab2-2'>"+"購物紀錄"+"</label>");
                                out.println("<input id='tab2-2' name='tabs-two' type='radio'>");
                                out.println("<div class='p-5'>");
                                out.println("<h4 class='cont mb-5'>"+"購物紀錄"+"</h4>");
                                out.println("<form>");
                                out.println("<div class='container-fluid'>");
                                out.println("<div class='d-flex bx-shape mb-3'>");
                                out.println("<div class='cont p-3'>");
                                out.println("<h6>"+"購買日期:"+shp.getString("date"));
                                out.println("</div>");
                                out.println("<div class='d-dlex p-2 bx-shape2'>");
                                out.println("<div class='cont p-2' style='margin-top:13%;'>");
                                out.println("<section>");
                                out.println("<nobr>");
                                out.println("<strong>");
                                out.println("<span style='font-size: 20px'>"+"品名:"+shp.getString("p_name")+"</span>");
                                out.println("<span style='font-size: 20px'>"+"/ &emsp; 數量:"+shp.getString("l_number")+"份"+"</span>");
                                out.println("<span style='font-size: 20px'>"+"/ &emsp; 價錢:$"+shp.getString("p_price")+"</span>");
                                out.println("</strong>");
                                out.println("</nobr>");
                                out.println("</section>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("<div class='p-2 flex-fill bx-shape3'>");
                                out.println("<textarea class='form-control mb-3' rows='4' name='comment'>"+"</textarea>");
                                out.println("<div class='ratings'>");
                                out.println("<ul>"+"<li class='stars'>");
                                out.println("<li class='stars'>");
                                out.println("<li class='stars'>");
                                out.println("<li class='stars'>");
                                out.println("<li class='stars'>"+"</ul>");
                                out.println("</div>");
                                out.println("<input type='submit' class='button button3' value='送出評論'>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</form>");
                            }
        %>
                <!-- 一個購物紀錄/END-->
               
            </div>
        </div>
    </div>
     <script src="assets/js/star.js" ></script>
</body>

</html>