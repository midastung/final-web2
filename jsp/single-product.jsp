<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>商品</title>
         <!-- singleproduct CSS start-->
        <link rel="stylesheet" href="assets/css/style.css" />
        <link rel="stylesheet" type="text/css" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/venobox.css">
        <link rel="stylesheet" href="assets/css/product-iconic-font.css">
        <link rel="stylesheet" type="text/css" href="assets/css/star.css">
        <!-- singleproduct CSS end-->
    </head>
    <body>
       
                    <div class="wrapper">
                        <!--Single Product Start-->
                        <div class="single-product-area mt-80">
                            <div class="container">
                                <div class="row">
                                    <%
                                        ResultSet rs=null;
                                        String aa=request.getParameter("p_id");
                                         sql="SELECT * FROM product WHERE p_id='"+aa+"'";
                                            ResultSet tmp = con.createStatement().executeQuery(sql);
                                            if(tmp.next())
                                            {
                                                out.println("<div class='col-md-5'>");
                                                out.println("<div class='tab-content product-details-large' id='myTabContent-3'>");
                                                out.println("<div class='tab-pane fade show active' id='single-slide-one'>");
                                                            out.println("<div class='single-product-img img-full'>");
                                                            out.println("<img src='"+tmp.getString("p_image")+"'>");
                                                            out.println("<a class='venobox' data-gall='gallery01' href='"+tmp.getString("p_image")+"'>"+"<i class='fa fa-search-plus'>"+"</i>"+"</a>");
                                                            out.println("</div>");
                                                            out.println("</div>");
                                                            out.println("<div class='tab-pane fade' id='single-slide-two'>");
                                                            out.println("<div class='single-product-img img-full'>");
                                                            out.println("<img src='"+tmp.getString("p_image")+"'>");
                                                            out.println("<a class='venobox' data-gall='gallery01' href='"+tmp.getString("p_image")+"'>"+"<i class='fa fa-search-plus'>"+"</i>"+"</a>");
                                                            out.println("</div>");
                                                            out.println("</div>");
                                                            out.println("<div class='tab-pane fade' id='single-slide-three'>");
                                                            out.println("<div class='single-product-img img-full'>");
                                                            out.println("<img src='"+tmp.getString("p_image")+"'>");
                                                            out.println("<a class='venobox' data-gall='gallery01' href='"+tmp.getString("p_image")+"'>"+"<i class='fa fa-search-plus'>"+"</i>"+"</a>");
                                                            out.println("</div>");
                                                            out.println("</div>");
                                                            out.println("<div class='tab-pane fade' id='single-slide-four'>");
                                                            out.println("<div class='single-product-img img-full'>");
                                                            out.println("<img src='"+tmp.getString("p_image")+"'>");
                                                            out.println("<a class='venobox' data-gall='gallery01' href='"+tmp.getString("p_image")+"'>"+"<i class='fa fa-search-plus'>"+"</i>"+"</a>");
                                                            out.println("</div>");
                                                            out.println("</div>");
                                                            out.println("</div>");
                                                            out.println("<div class='single-product-menu'>");
                                                            out.println("<div class='nav single-slide-menu' role='tablist'>");
                                                            out.println("<div class='single-tab-menu img-full'>");
                                                            out.println("<a class='active' data-toggle='tab' href='#single-slide-one'>"+"<img src='"+tmp.getString("p_image")+"' style='height:120px;'>"+"</a>");
                                                            out.println("</div>");
                                                            out.println("<div class='single-tab-menu img-full'>");
                                                            out.println("<a data-toggle='tab' href='#single-slide-two'>"+"<img src='"+tmp.getString("p_image")+"' style='height:120px;'>"+"</a>");
                                                            out.println("</div>");
                                                            out.println("<div class='single-tab-menu img-full'>");
                                                            out.println("<a data-toggle='tab' href='#single-slide-three'>"+"<img src='"+tmp.getString("p_image")+"' style='height:120px;'>"+"</a>");
                                                            out.println("</div>");
                                                            out.println("<div class='single-tab-menu img-full'>");
                                                            out.println("<a data-toggle='tab' href='#single-slide-four'>"+"<img src='"+tmp.getString("p_image")+"' style='height:120px;'>"+"</a>");
                                                            out.println("</div>");
                                                            out.println("</div>");
                                                            out.println("</div>");

                                                            out.println("</div>");
                                                            out.println("<div class='col-md-7'>");
                                                            out.println("<div class='single-product-name'>");
                                                            out.println("<h1 class='single-product-name'>"+tmp.getString("p_name")+"</h1>");
                                                            out.println("<div class='rating'>");
                                                            out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                            out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                            out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                            out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                            out.println("<span class='star star_bl' style='font-size: 20px; width: 20px'>"+"</span>");
                                                            out.println("</div>");
                                                            out.println("<div class='single-product-price'>");
                                                            out.println("<div class='product-discount'>");
                                                            out.println("<span class='price'>$"+tmp.getString("p_price")+"</span>");
                                                            out.println("<span class='discount'>-"+tmp.getString("p_discount")+"%</span>");
                                                            out.println("</div>");
                                                            out.println("</div>");
                                                            out.println("<div class='product-info'>");
                                                            out.println("<p>"+tmp.getString("p_text")+"</p>");
                                                            out.println("</div>");
                                                            out.println("<div class='single-product-action'>");
                                                            out.println("<div class='product-variants-item'>");
                                                            out.println("<span class='control-label'>"+"數量"+"</span>");
                                                            out.println("<form id='myform' method='POST' action='#'>");
                                                            out.println("<input type='button' value='-' class='qtyminus' field='quantity'/>");
                                                            out.println("<input type='text' name='quantity' value='0' class='qty pl-0'/>");
                                                            out.println("<input type='button' value='+' class='qtyplus' field='quantity'/>");
                                                            out.println("</form>");
                                                            out.println("</div>");
                                                            out.println("</div>");
                                    %>
                            
                                   
                                            <div class="bt-5">
                                                <button class="button mr-3">加購物車</button>
                                                <button class="button">我的最愛</button>
                                                <span class="h5 ml-5">分享至:</span>
                                                <ul class="share-buttons" style="margin: -40px -40px 0px 350px;">
                                                    <li><a href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fmidastung.github.io%2Ffinal-web2%2Fsingle-product.html&quote=%E9%99%90%E6%99%82%E5%84%AA%E6%83%A0%E5%85%A8%E9%9D%A2%E7%89%B9%E5%83%B9~%E5%8F%AA%E5%88%B06%2F15%E5%96%94" title="Share on Facebook" target="_blank"><i class="fab fa-facebook"></i></a></li>
                                                    <li><a href="https://twitter.com/intent/tweet?source=https%3A%2F%2Fmidastung.github.io%2Ffinal-web2%2Fsingle-product.html&text=%E9%99%90%E6%99%82%E5%84%AA%E6%83%A0%E5%85%A8%E9%9D%A2%E7%89%B9%E5%83%B9~%E5%8F%AA%E5%88%B06%2F15%E5%96%94:%20https%3A%2F%2Fmidastung.github.io%2Ffinal-web2%2Fsingle-product.html" target="_blank" title="Tweet">  <i class="fab fa-twitter"></i></a></li>
                                                    
                                                    <li><a href="http://pinterest.com/pin/create/button/?url=https%3A%2F%2Fmidastung.github.io%2Ffinal-web2%2Fsingle-product.html&description=%E6%A3%92%E6%A3%92%E7%9A%84" target="_blank" title="Pin it"><i class="fab fa-pinterest"></i></a></li>
                                                    <li><a href="mailto:?subject=%E9%99%90%E6%99%82%E5%84%AA%E6%83%A0%E5%85%A8%E9%9D%A2%E7%89%B9%E5%83%B9~%E5%8F%AA%E5%88%B06%2F15%E5%96%94&body=%E6%A3%92%E6%A3%92%E7%9A%84:%20https%3A%2F%2Fmidastung.github.io%2Ffinal-web2%2Fsingle-product.html" target="_blank" title="Send email">  <i class="fab fas fa-envelope"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Single Product End-->
                            <!--Single Product Review Tab Start-->
                            <div class="single-product-review-tab mt-80" style="margin-bottom: 80px;">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="single-product-review-and-description-area">
                                                <!--Review And Description Tab Menu Start-->
                                                <ul class="nav dec-and-review-menu">
                                                    <li>
                                                        <a class="active" data-toggle="tab" href="#description">商品敘述</a>
                                                    </li>
                                                    <li>
                                                        <a data-toggle="tab" href="#product-details">相關評論</a>
                                                    </li>
                                                    <li>
                                                        <a data-toggle="tab" href="#reviews">填寫評論</a>
                                                    </li>
                                                </ul>
                                                <!--Review And Description Tab Menu End-->
                                                <!--Review And Description Tab Content Start-->
                                                <%
                                                    out.println("<div class='tab-content product-review-content-tab mt-30' id='myTabContent-4'>");
                                                    out.println("<div class='tab-pane fade show active' id='description'>");
                                                    out.println("<div class='single-product-description'>");
                                                    out.println("<p>"+tmp.getString("p_textarea")+"</p>");
                                                    out.println("</div>");
                                                    out.println("</div>");
                                                    out.println("<div class='tab-pane fade' id='product-details'>");
                                                    out.println("<div class='product-details'>");
                                                    out.println("<div class='product_comment'>");
                                                    out.println("<div class='container'>");
                                                    out.println("<div class='row'>");
                                                    out.println("<div class='col-4 comment_str' style='max-width: 25%; '>");
                                                    out.println("<p class='level_txt'>銷量"+tmp.getString("p_hot")+"</p>");
                                                    out.println("<div class='rating' style='margin-top: -15px; '>");
                                                    out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                    out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                    out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                    out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                    out.println("<span class='star star_bl' style='font-size: 20px; width: 20px'>"+"</span>");
                                                    out.println("</div>");
                                                    out.println("</div>");
                                                    out.println("<div class='col-8'>");
                                                    }
                                                %>
                                                <%
                                                    rs = con.createStatement().executeQuery("select count(stars) as countstr from list_shopping where p_id='"+aa+"' and l_boolean='1' ;");
                                                    rs.next();
                                                    out.println("<button class='comment_btn tablinks' onclick='openCity(event, 'all')'>"+" 全部("+rs.getString("countstr")+")</button>");
                                                %>
                                                <%
                                                    rs = con.createStatement().executeQuery("select count(stars) as countstr from list_shopping where p_id='"+aa+"' and l_boolean='1' and stars='5'");
                                                    rs.next();
                                                    out.println("<button class='comment_btn tablinks' onclick='openCity(event, 'five_star')'>"+"5星("+rs.getString("countstr")+")</button>");
                                                %>
                                                <%
                                                    rs = con.createStatement().executeQuery("select count(stars) as countstr from list_shopping where p_id='"+aa+"' and l_boolean='1' and stars='4'");
                                                    rs.next();
                                                    out.println("<button class='comment_btn' onclick=openCity(event, 'four_star')'>"+"4星("+rs.getString("countstr")+")</button>");
                                                %>
                                                <%
                                                    rs = con.createStatement().executeQuery("select count(stars) as countstr from list_shopping where p_id='"+aa+"' and l_boolean='1' and stars='3'");
                                                    rs.next();
                                                    out.println("<button class='comment_btn' onclick=openCity(event, 'three_star')'>"+"3星("+rs.getString("countstr")+")</button>");
                                                %>
                                                <%
                                                    rs = con.createStatement().executeQuery("select count(stars) as countstr from list_shopping where p_id='"+aa+"' and l_boolean='1' and stars='2'");
                                                    rs.next();
                                                    out.println("<button class='comment_btn' onclick=openCity(event, 'two_star')'>"+"2星("+rs.getString("countstr")+")</button>");
                                                %>
                                                <%
                                                    rs = con.createStatement().executeQuery("select count(stars) as countstr from list_shopping where p_id='"+aa+"' and l_boolean='1' and stars='1'");
                                                    rs.next();
                                                    out.println("<button class='comment_btn' onclick=openCity(event, 'one_star')'>"+"1星("+rs.getString("countstr")+")</button>");



                                                      out.println("</div>");
                                                    out.println("</div>");
                                                    out.println("</div>");
                                                    
                                                %>
                                                  

                                                
                                    
                                
                                       
                                  

                                    <%
                                        request.setCharacterEncoding("utf-8");
                                        sql="SELECT * FROM list_shopping where p_id='"+aa+"'";
                                        tmp=con.createStatement().executeQuery(sql);
                                        while(tmp.next())
                                        {
                                        out.println("<div id='all' class='tabcontent'>");
                                        out.println("<i class='fas fa-user-circle' style='font-size: 25px; display: inline;'>");
                                        out.println("</i>");
                                        out.println("<p style='display: inline;'>");
                                        out.println(tmp.getString("l_name"));  
                                        out.println("</p>");
                                        out.println("<div class='rating'>");
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star star_bl' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("</div>"); 
                                        out.println("<p style='font-size: 15px;margin-top: 20px;''>"); 
                                        out.println(tmp.getString("message")); 
                                        out.println("</p>");
                                        out.println("<p style='font-size: 7px;margin-top: 20px;'>");
                                        out.println(tmp.getString("date")); 
                                        out.println("</p>");
                                        out.println("<hr>");
                                        out.println("<div>");
                                        }
                                    %>

                                    <%
                                        request.setCharacterEncoding("utf-8");
                                        sql="SELECT * FROM list_shopping where p_id='"+aa+"' and stars='5'";
                                        tmp=con.createStatement().executeQuery(sql);
                                        out.println("<div id='five_star' class='tabcontent'>");
                                        while(tmp.next())
                                        {
                                      
                                        out.println("<i class='fas fa-user-circle' style='font-size: 25px; display: inline;'>");
                                        out.println("</i>");
                                        out.println("<p style='display: inline;'>");
                                        out.println(tmp.getString("l_name"));  
                                        out.println("</p>");
                                        out.println("<div class='rating'>");
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star star_bl' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("</div>"); 
                                        out.println("<p style='font-size: 15px;margin-top: 20px;''>"); 
                                        out.println(tmp.getString("message")); 
                                        out.println("</p>");
                                        out.println("<p style='font-size: 7px;margin-top: 20px;'>");
                                        out.println(tmp.getString("date")); 
                                        out.println("</p>");
                                        out.println("<hr>");
                                        
                                        }
                                        out.println("<div>");
                                    %>

                                    <%
                                     sql="SELECT * FROM list_shopping where p_id='"+aa+"' and stars='4'";
                                     tmp=con.createStatement().executeQuery(sql);
                                     out.println("<div id='four_star' class='tabcontent'>");
                                        while(tmp.next())
                                        {
                                       
                                        out.println("<i class='fas fa-user-circle' style='font-size: 25px; display: inline;'>");
                                        out.println("</i>");
                                        out.println("<p style='display: inline;'>");
                                        out.println(tmp.getString("l_name"));  
                                        out.println("</p>");
                                        out.println("<div class='rating'>");
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star star_bl' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("</div>"); 
                                        out.println("<p style='font-size: 15px;margin-top: 20px;''>"); 
                                        out.println(tmp.getString("message")); 
                                        out.println("</p>");
                                        out.println("<p style='font-size: 7px;margin-top: 20px;'>");
                                        out.println(tmp.getString("date")); 
                                        out.println("</p>");
                                        out.println("<hr>");
                                        
                                        }
                                        out.println("<div>");
                                    %>

                                    <%
                                      request.setCharacterEncoding("utf-8");
                                       sql="SELECT * FROM list_shopping where p_id='"+aa+"' and stars='3'";
                                        tmp=con.createStatement().executeQuery(sql);
                                     out.println("<div id='three_star' class='tabcontent'>");
                                        while(tmp.next())
                                        {
                                       
                                        out.println("<i class='fas fa-user-circle' style='font-size: 25px; display: inline;'>");
                                        out.println("</i>");
                                        out.println("<p style='display: inline;'>");
                                        out.println(tmp.getString("l_name"));  
                                        out.println("</p>");
                                        out.println("<div class='rating'>");
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star star_bl' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("</div>"); 
                                        out.println("<p style='font-size: 15px;margin-top: 20px;''>"); 
                                        out.println(tmp.getString("message")); 
                                        out.println("</p>");
                                        out.println("<p style='font-size: 7px;margin-top: 20px;'>");
                                        out.println(tmp.getString("date")); 
                                        out.println("</p>");
                                        out.println("<hr>");
                                        
                                        }
                                        out.println("<div>");
                                    %>

                                    <%
                                      request.setCharacterEncoding("utf-8");
                                       sql="SELECT * FROM list_shopping where p_id='"+aa+"' and stars='2'";
                                        tmp=con.createStatement().executeQuery(sql);
                                     out.println("<div id='two_star' class='tabcontent'>");
                                        while(tmp.next())
                                        {
                                       
                                        out.println("<i class='fas fa-user-circle' style='font-size: 25px; display: inline;'>");
                                        out.println("</i>");
                                        out.println("<p style='display: inline;'>");
                                        out.println(tmp.getString("l_name"));  
                                        out.println("</p>");
                                        out.println("<div class='rating'>");
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star star_bl' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("</div>"); 
                                        out.println("<p style='font-size: 15px;margin-top: 20px;''>"); 
                                        out.println(tmp.getString("message")); 
                                        out.println("</p>");
                                        out.println("<p style='font-size: 7px;margin-top: 20px;'>");
                                        out.println(tmp.getString("date")); 
                                        out.println("</p>");
                                        out.println("<hr>");
                                        out.println("<div>");
                                        }
                                    %>
                                    
                                    <%
                                      request.setCharacterEncoding("utf-8");
                                        sql="SELECT * FROM list_shopping where p_id='"+aa+"' and stars='1'";
                                        tmp=con.createStatement().executeQuery(sql);
                                        out.println("<div id='one_star' class='tabcontent'>");
                                        while(tmp.next())
                                        {
                                     
                                        out.println("<i class='fas fa-user-circle' style='font-size: 25px; display: inline;'>");
                                        out.println("</i>");
                                        out.println("<p style='display: inline;'>");
                                        out.println(tmp.getString("l_name"));  
                                        out.println("</p>");
                                        out.println("<div class='rating'>");
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("<span class='star star_bl' style='font-size: 20px;width: 20px'>"); 
                                        out.println("</span>"); 
                                        out.println("</div>"); 
                                        out.println("<p style='font-size: 15px;margin-top: 20px;''>"); 
                                        out.println(tmp.getString("message")); 
                                        out.println("</p>");
                                        out.println("<p style='font-size: 7px;margin-top: 20px;'>");
                                        out.println(tmp.getString("date")); 
                                        out.println("</p>");
                                        out.println("<hr>");
    
                                        }
                                        out.println("</div>");
                                    %>
                                </div>
                                </div>
                                </div>
                                                   <div class="tab-pane fade" id="reviews">
                                                        <div class="review-page-comment">
                                                            <div class="review-form">
                                                                <form action="product_mess.jsp" method="post">
                                                                    <label>評價<sup class="required">*</sup></label>
                                                                    <div class="ratings">
                                                                            <input type="radio" hidden checked>
                                                                            <label class="stars"></label>
                                                                     
                                                                             <input type="radio" hidden checked>
                                                                             <label class="stars"></label>
                                                                     
                                                                             <input type="radio" hidden checked>
                                                                             <label class="stars"></label>
                                                                        
                                                                             <input type="radio" hidden checked>
                                                                             <label class="stars"></label>
        
                                                                             <input type="radio" hidden checked>
                                                                             <label class="stars"></label>
                                                                       
                                                                    </div>
                                                                    <label>名字<sup class="required">*</sup></label>
                                                                    <input type="text" placeholder="Your Name" name="title">
                                                                    <label>評論標題<sup class="required">*</sup></label>
                                                                    <input type="text" placeholder="Title Here" name="title">
                                                                    <label>聯絡方式<sup class="required">*</sup></label>
                                                                    <input type="text" placeholder="phone" name="title">
                                                                    <label>評論內容<sup class="required">*</sup></label>
                                                                    <textarea id="content" name="content" placeholder="content"></textarea>
                                                           
                                                                    <div class="send-your-review">
                                                                        
                                                                        <div class="send-cancel-btn">
                                                                            <button class="send-btn">Send</button>
                                                                            or
                                                                            <button class="cancel-btn">Cancel</button>
                                                                            
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                <!--Review And Description Tab Content End-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            <script src="assets/js/comment.js" ></script>
          
           
             <!--singleproduct start-->
            <script src="assets/js/star.js" ></script>
            <script src="assets/js/venobox.min.js"></script>
            <script src="assets/js/count.js"></script>
            <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>
            <script src="assets/js/owl.carousel.min.js"></script>
            <script src="assets/js/slick.min.js"></script>
            <script src="assets/js/jquery.meanmenu.min.js"></script>
            <script src="assets/js/venobox.min.js"></script>
            <!--Instafeed-->
            <!--<script src="js/instafeed.min.js"></script>-->
            <!--Nice Select-->
            <script src="assets/js/jquery.nice-select.min.js"></script>
            <script src="assets/js/jquery.scrollUp.min.js"></script>
            <script src="assets/js/main.js"></script>
            <!--singleproduct end-->
           
            <!--    置頂按鈕-->
            <!--            wow.js前置-->
            <script>
            new WOW().init();
            </script>
            <!--
            <script>
            window.onbeforeunload = function() {
            window.scrollTo(0, 0);
            }
            </script>
            -->
            
        </body>
    </html>