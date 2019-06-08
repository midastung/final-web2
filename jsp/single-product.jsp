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
                                        String aa=request.getParameter("p_id");
                                         sql="SELECT * FROM product WHERE p_id='"+aa+"'; ";
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
                                                    out.println("<p class='level_txt'>"+tmp.getString("p_hot")+"</p>");
                                                    out.println("<div class='rating' style='margin-top: -15px; '>");
                                                    out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                    out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                    out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                    out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                    out.println("<span class='star star_bl' style='font-size: 20px; width: 20px'>"+"</span>");
                                                    out.println("</div>");
                                                    out.println("</div>");
                                                    out.println("<div class='col-8'>");
                                                    out.println("<button class='comment_btn tablinks' onclick='openCity(event, 'all')'>"+" 全部"+"</button>");
                                                    out.println("<button class='comment_btn tablinks' onclick='openCity(event, 'five_star')'>"+"5星"+"</button>");
                                                    out.println("<button class='comment_btn' onclick='openCity(event, 'four_star')'>"+"4星"+"</button>");
                                                    out.println("<button class='comment_btn' onclick='openCity(event, 'three_star')'>"+"3星"+"</button>");
                                                    out.println("<button class='comment_btn' onclick='openCity(event, 'two_star')'>"+"2星"+"</button>");
                                                    out.println("<button class='comment_btn' onclick='openCity(event, 'one_star')'>"+"1星"+"</button>");
                                                    out.println("</div>");
                                                    out.println("</div>");
                                                    out.println("</div>");
                                                    

                                                
                                    %>
                                                                <div id="all" class="tabcontent">
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">as*******</p>
                                                                    <div class="rating">
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star star_bl" style="font-size: 20px;width: 20px"></span>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                    <hr>
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">as*******</p>
                                                                    <div class="rating">
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star star_bl" style="font-size: 20px;width: 20px"></span>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                </div>
                                                                
                                                                <div id="five_star" class="tabcontent">
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">ax*******</p>
                                                                    <div class="rating">
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star star_bl" style="font-size: 20px;width: 20px"></span>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                    <hr>
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">as*******</p>
                                                                    <div class="rating">
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star star_bl" style="font-size: 20px;width: 20px"></span>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                </div>
                                                                <div id="four_star" class="tabcontent">
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">as*******</p>
                                                                    <div class="rating">
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star star_bl" style="font-size: 20px;width: 20px"></span>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                    <hr>
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">a2*******</p>
                                                                    <div class="rating">
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star star_bl" style="font-size: 20px;width: 20px"></span>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                </div>
                                                                <div id="three_star" class="tabcontent">
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">a3*******</p>
                                                                    <div class="rating">
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star star_bl" style="font-size: 20px;width: 20px"></span>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                    <hr>
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">as*******</p>
                                                                    <div class="rating">
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star star_bl" style="font-size: 20px;width: 20px"></span>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                </div>
                                                                <div id="two_star" class="tabcontent">
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">a4*******</p>
                                                                    <div class="rating">
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star star_bl" style="font-size: 20px;width: 20px"></span>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                    <hr>
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">as*******</p>
                                                                    <div class="rating">
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star star_bl" style="font-size: 20px;width: 20px"></span>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                </div>
                                                                <div id="one_star" class="tabcontent">
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">as*******</p>
                                                                    <div class="rating">
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star star_bl" style="font-size: 20px;width: 20px"></span>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                    <hr>
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">as*******</p>
                                                                    <div class="rating">
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                        <span class="star star_bl" style="font-size: 20px;width: 20px"></span>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%
                                                        out.println("<div class='tab-pane fade' id='reviews'>");
                                                        out.println("<div class='review-page-comment'>");
                                                        out.println("<div class='review-form'>");
                                                        out.println("<form action='#'>");
                                                        out.println("<label>"+"評價"+"<sup class='required'>"+"*"+"</sup>"+"</label>");
                                                        out.println("<ul class='ratings'>");
                                                        out.println("<li class='star' style='font-size: 20px; width: 20px'>"+"</li>");
                                                        out.println("<li class='star' style='font-size: 20px; width: 20px'>"+"</li>");
                                                        out.println("<li class='star' style='font-size: 20px; width: 20px'>"+"</li>");
                                                        out.println("<li class='star' style='font-size: 20px; width: 20px'>"+"</li>");
                                                        out.println("<li class='star' style='font-size: 20px; width: 20px'>"+"</li>");
                                                        out.println("</ul>");
                                                        out.println("<label>"+"名字"+"<sup class='required'>"+"*"+"</sup>"+"</label>");
                                                        out.println("<input type='text' placeholder='Your Name' name='title'>");
                                                        out.println("<label>"+"評論標題"+"<sup class='required'>"+"*"+"</sup>"+"</label>");
                                                        out.println("<input type='text' placeholder='Title Here' name='title'>");
                                                        out.println("<label>"+"聯絡方式"+"<sup class='required'>"+"*"+"</sup>"+"</label>");
                                                        out.println("<input type='text' placeholder='phone' name='title'>");
                                                        out.println("<label>"+"評論內容"+"<sup class='required'>"+"*"+"</sup>"+"</label>");
                                                        out.println("<textarea id='content' name='content' placeholder='content'>"+"</textarea>");

                                                        out.println("<div class='send-your-review'>");
                                                        out.println("<div class='send-cancel-btn'>");
                                                        out.println("<button class='send-btn'>"+"Send"+"</button>");
                                                        out.println("<span>"+"or"+"</span>");
                                                        out.println("<button class='cancel-btn'>"+"Cancel"+"</button>");

                                                        out.println("</div>");
                                                        out.println("</div>");
                                                        out.println("</from>");
                                                        out.println("</div>");
                                                        out.println("</div>");
                                                        out.println("</div>");
                                                        out.println("</div>");                                                                          
                                                        }
                                                    %>
                                                    
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