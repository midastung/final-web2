<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>

<head>
    <title>會員專區</title>
    <link rel="stylesheet" type="text/css" href="assets/css/style_index.css">
    <link rel="stylesheet" href="assets/css/member-area.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC:700&display=swap" rel="stylesheet">
</head>
<body>
    <!--    會員專區/開始-->
   <%   
            String aa=request.getParameter("m_account");
                sql="SELECT * FROM member WHERE m_account='"+aa+"'; ";
                    ResultSet tmp = con.createStatement().executeQuery(sql);
                        while(tmp.next())
                            {
                                out.println("<div class='tabs p-5' style='margin-top:50px; '>");
                                out.println("<div class='tab-2'>");
                                out.println("<label for='tab2-1'>"+"會員專區"+"</label>");
                                out.printnl("<input id='tab2-1' name='tabs-two' type='radio' checked='checked'>");
                                out.println("<div class='p-0'>");
                                out.println("<div class='p-5'>");
                                out.println("<h4 class='cont mb-5'>"+"會員資料"+"</h4>");
                                out.println("<form>");
                                out.println("<div class='input-group mb-3'>");
                                out.println("<div class='input-group-prepend'>");
                                out.println("<span class='input-group-text'>"+"會員等級"+"</span>");
                                out.println("</div>");
                                out.println("<input type='text' class='form-control' value='"+tmp.getString("m_head")+"' disabled='disabled'>");
                                out.println("</div>");
                                out.println("<div class='input-group mb-3'>");
                                out.println("<div class='input-group-prepend'>");
                                out.println("<span class='input-group-text'>"+"會員名稱"+"</span>");
                                out.println("<div>");
                                out.println("<input type='text' class='form-control' placeholder='名字' value='"+tmp.getString("m_firstname")+"'>");
                                out.println("<input type='text' class='form-control' placeholder='姓氏' value='"+tmp.getString("m_lastname")+"'>");
                                out.println("</div>");
                                out.println("<div class='input-group mb-3'>");
                                out.println("<div class='input-group-prepend'>");
                                out.println("<span class='input-group-text'>"+">帳號"+"</span>");
                                out.println("</div>");
                                out.println("<input type='text' class='form-control' placeholder='請填寫此欄位' value='"+tmp.getString("m_account")+"'>");
                                out.println("</div>");
                                out.println("<div class='input-group mb-3'>");
                                out.println("<div class='input-group-prepend'>");
                                out.println("<span class='input-group-text'>"+">密碼"+"</span>");
                                out.println("</div>");
                                out.println("<input type='text' class='form-control' placeholder='請填寫此欄位' value='"+tmp.getString("m_password")+"'>");
                                out.println("</div>");
                                out.println("<div class='input-group mb-3'>");
                                out.println("<div class='input-group-prepend'>");
                                out.println("<span class='input-group-text'>"+">地址"+"</span>");
                                out.println("</div>");
                                out.println("<input type='text' class='form-control' placeholder='請填寫此欄位' value='"+tmp.getString("m_address")+"'>");
                                out.println("</div>");
                                out.println("<div class='input-group mb-4'>");
                                out.println("<div class='input-group-prepend'>");
                                out.println("<span class='input-group-text'>"+">電話"+"</span>");
                                out.println("</div>");
                                out.println("<input type='text' class='form-control' placeholder='請填寫此欄位' value='"+tmp.getString("m_tel")+"'>");
                                out.println("</div>");
                                out.println("<div class='input-group mb-5'>");
                                out.println("<input type='submit' class='button button1' value='確認送出'>");
                                out.println("<span>"+"&emsp;"+"</span>");
                                out.println("<button class='button button1' onClick='window.location.reload();'>"+"重新輸入"+"</button>");
                                out.println("</div>");
                                out.println("<form>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</div>");
                                
                            }
        %>
        <!--    會員專區/結束-->
        <%
            if(tmp.next())
                            {
                                out.println("<div class='tab-2'>");
                                out.printnl("<label for='tab2-2'>"+"購物紀錄"+"</label>");
                                out.println("<input id='tab2-2' name='tabs-two' type='radio'>");
                                out.println("<div class='p-5'>");
                                out.println("<h4 class='cont mb-5'>"+"購物紀錄"+"</h4>");
                                out.println("<form>");
                                out.println("<div class='container-fluid'>");
                                out.println("<div class='d-flex bx-shape mb-3'>");
                                out.println("<div class='cont p-3'>");
                                out.println("<h6>"+"購買日期:"+tmp.getString("date"));
                                out.println("</div>");
                                out.println("<div class='d-dlex p-2 bx-shape2'>");
                                out.println("<div class='cont p-2'>");
                                out.println("<section>");
                                out.println("<nobr>");
                                out.println("<strong>");
                                out.println("<span style='font-size: 20px'>"+"品名:"+tmp.getString("p_id")+"</span>");
                                out.println("<span style='font-size: 20px'>"+"/ &emsp; 數量:"+tmp.getString("l_number")+"份"+"</span>");
                                out.println("<span style='font-size: 20px'>"+"/ &emsp; 價錢:$"+tmp.getString("p_id")+"</span>");
                                out.println("</strong>");
                                out.println("</nobr>");
                                out.println("</section>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("<div class='p-2 flex-fill bx-shape3'>");
                                out.println("<textarea class='form-control mb-3' rows='4' name='comment'>"+"</textarea>");
                                out.println("<input type='submit' class='button button3' value='送出評論'>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</form>");
                            }
        %>
                <!-- 一個購物紀錄/END-->
                <form>
                    <div class="container-fluid">
                        <div class="d-flex bx-shape mb-3">
                            <div class="cont p-3">
                                <h6>購買日期:2019/11/28</h6>
                            </div>
                            <div class="d-flex p-2 bx-shape2">

                                <div class="cont p-2">
                                    <section>
                                        <nobr>
                                            <strong>
                                                <span style="font-size: 20px">品名:垂涎欲滴的餃子</span>
                                                <span style="font-size: 20px">/&emsp;數量:2個</span>
                                                <span style="font-size: 20px">/&emsp;價錢:$500</span>
                                            </strong>
                                        </nobr>
                                    </section>
                                </div>
                            </div>
                            <div class="p-2 flex-fill bx-shape3">
                                <textarea class="form-control mb-3" rows="4" name="comment"></textarea>
                                <input type="submit" class="button button3 " value="送出評論">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>

</html>