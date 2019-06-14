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
   <%   
           
                sql="SELECT * FROM member WHERE m_account='"+acc+"'; ";
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
                                        <form action="alter_member.jsp" method="post">
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
                                                <input type="text" class="form-control" placeholder="名字" name="fname" value="<%=mem.getString("m_firstname")%>">
                                                <input type="text" class="form-control" placeholder="姓氏" name="lname" value="<%=mem.getString("m_lastname")%>">
                                            </div>

                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">帳號</span>
                                                </div>
                                                <input type="text" class="form-control" placeholder="請填寫此欄位" name="acc" value="<%=mem.getString("m_account")%>">
                                            </div>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">密碼</span>
                                                </div>
                                                <input type="text" class="form-control" placeholder="請填寫此欄位" name="pas" value="<%=mem.getString("m_password")%>">
                                            </div>
                                             <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">信箱</span>
                                                </div>
                                                <input type="text" class="form-control" placeholder="請填寫此欄位" name="mail" value="<%=mem.getString("m_email")%>">
                                            </div>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">地址</span>
                                                </div>
                                                <input type="text" class="form-control" placeholder="請填寫此欄位" name="address" value="<%=mem.getString("m_address")%>">
                                            </div>
                                            <div class="input-group mb-4">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">電話</span>
                                                </div>
                                                <input type="text" class="form-control" placeholder="請填寫此欄位" name="tel" value="<%=mem.getString("m_tel")%>">
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
                       
                    </form>
        <!--    會員專區/結束-->
        <div class="tab-2">
            <label for="tab2-2">購物紀錄</label>
            <input id="tab2-2" name="tabs-two" type="radio">
            <div class="p-5">
                <h4 class="cont mb-5">購物紀錄</h4>
<%   
               
               String sql2="SELECT * FROM list_shopping,product WHERE l_boolean='0' AND list_shopping.m_account='"+acc+"' AND list_shopping.p_id=product.p_id order by l_id desc; ";
                ResultSet tmp = con.createStatement().executeQuery(sql2);
                while(tmp.next())
                    {
%>
        
        
                <!--一個購物紀錄/START-->

                    <div class="container-fluid">
                        <div class="d-flex bx-shape mb-3">
                            <div class="cont p-3">
                                <h6>訂單編號：<%=tmp.getString("l_idd")%></h6>
                                <h6>購買日期:<%=tmp.getString("date")%></h6>
                            </div>
                            <div class="d-flex p-2 bx-shape2">

                                <div class="cont p-2">
                                    <section>
                                        <nobr>
                                            <strong>
                                                <span style="font-size: 20px">品名:<%=tmp.getString("p_name")%></span>
                                                <span style="font-size: 20px">/&emsp;數量:<%=tmp.getString("l_number")%>個</span>
                                                <span style="font-size: 20px">/&emsp;價錢:$<%=tmp.getString("p_price")%></span>
                                            </strong>
                                        </nobr>
                                    </section>
                                </div>
                            </div>
                            <div class="p-2 flex-fill bx-shape3">
                                <textarea class="form-control mb-3" rows="4" name="comment"></textarea>
                                 <ul class="ratings" style="float: left;">
                                    <li class="stars"></li>
                                    <li class="stars"></li>
                                    <li class="stars"></li>
                                    <li class="stars"></li>
                                    <li class="stars"></li>

                                </ul>
                                <input type="submit" class="button button3 " style="float: right: 2%;" value="送出評論">
                                <input type="hidden" name="pid" value="<%=tmp.getString("p_id")%>">
                                <input type="hidden" name="lidd" value="<%=tmp.getString("l_idd")%>">
                            </div>
                        </div>
                    </div>
                </form>
              <%
                }

               sql2="SELECT * FROM list_shopping,product WHERE l_boolean='1' AND list_shopping.m_account='"+acc+"' AND list_shopping.p_id=product.p_id order by l_id desc; ";
              tmp = con.createStatement().executeQuery(sql2);
                while(tmp.next())
                    {
%>
        
        
                <!--一個購物紀錄/START-->

                    <div class="container-fluid">
                        <div class="d-flex bx-shape mb-3">
                            <div class="cont p-3">
                                <h6>訂單編號：<%=tmp.getString("l_idd")%></h6>
                                <h6>購買日期:<%=tmp.getString("date")%></h6>
                            </div>
                            <div class="d-flex p-2 bx-shape2">

                                <div class="cont p-2">
                                    <section>
                                        <nobr>
                                            <strong>
                                                <span style="font-size: 20px">品名:<%=tmp.getString("p_name")%></span>
                                                <span style="font-size: 20px">/&emsp;數量:<%=tmp.getString("l_number")%>個</span>
                                                <span style="font-size: 20px">/&emsp;價錢:$<%=tmp.getString("p_price")%></span>
                                            </strong>
                                        </nobr>
                                    </section>
                                </div>
                            </div>
                            <div class="p-2 flex-fill bx-shape3">
                               
                                    <p class="form-control mb-3" style="float: left;" readonly><%=tmp.getString("message")%></p>
                                 <ul class="ratings">
                                    <li class="stars"></li>
                                    <li class="stars"></li>
                                    <li class="stars"></li>
                                    <li class="stars"></li>
                                    <li class="stars"></li>
                                </ul>
                                <input type="submit" class="button " value="已送出" style="float: right;right: 2%;" readonly>
                             
                            </div>
                        </div>
                    </div>
              
            <%
                }
            %>
                

            </div>
        </div>
    </div>
 <script src="assets/js/star.js"></script>
</body>

</html>