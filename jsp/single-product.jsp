<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@page import="java.util.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>test</title>
        <!-- singleproduct CSS start-->
        <link rel="stylesheet" href="assets/css/style.css" />
        <link rel="stylesheet" type="text/css" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/venobox.css">
        <link rel="stylesheet" href="assets/css/product-iconic-font.css">
        <link rel="stylesheet" type="text/css" href="assets/css/star.css">
        <!-- singleproduct CSS end-->
        <link rel="shortcut icon" href="../favicon.ico">
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="assets/css/component.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style_index.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/animate.css" />
        
        
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <!--    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">-->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
        <link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC:700&display=swap" rel="stylesheet">
        <script type='text/javascript' src='//platform-api.sharethis.com/js/sharethis.js#property=5ce40b2adc07bd00120823e5&product=inline-share-buttons' async='async'></script>
    </head>
    <style>
            .single-box{
                    border-radius: 20px;
                        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                    }
    </style>
    <body>
     
                    <div class="wrapper">
                        <!--Single Product Start-->
                        <div class="single-product-area mt-80">
                            <div class="container single-box">
                                <div class="row p-5">
                                    <%
                                        ResultSet pp = null;
                                        ResultSet rs=null;
                                        String aa=request.getParameter("p_id");
                                        sql="SELECT * FROM product WHERE p_id='"+aa+"'";
                                        pp = con.createStatement().executeQuery(sql);
                                        if(pp.next())
                                            {
                                    %>
                                    <div class="col-md-5">
                                        <!--Tab Content Start-->
                                        <div class="tab-content product-details-large" id="myTabContent-3">
                                            <div class="tab-pane fade show active" id="single-slide-one">
                                                <!--Single Product Image Start-->
                                                <div class='single-product-img img-full'>
                                                    <img src="<%=pp.getString("p_image")%>" alt="">
                                                    <a class="venobox" data-gall="gallery01" href="<%=pp.getString("p_image")%>"><i class="fa fa-search-plus"></i></a>
                                                </div>
                                                <!--Single Product Image End-->
                                            </div>
                                            <div class="tab-pane fade" id="single-slide-two">
                                                <!--Single Product Image Start-->
                                                <div class="single-product-img img-full">
                                                    <img src="<%=pp.getString("p_image")%>" alt="">
                                                    <a class="venobox" data-gall="gallery01" href="<%=pp.getString("p_image")%>"><i class="fa fa-search-plus"></i></a>
                                                </div>
                                                <!--Single Product Image End-->
                                            </div>
                                            <div class="tab-pane fade" id="single-slide-three">
                                                <!--Single Product Image Start-->
                                                <div class="single-product-img img-full">
                                                    <img src="<%=pp.getString("p_image")%>" alt="">
                                                    <a class="venobox" data-gall="gallery01" href="<%=pp.getString("p_image")%>"><i class="fa fa-search-plus"></i></a>
                                                </div>
                                                <!--Single Product Image End-->
                                            </div>
                                            <div class="tab-pane fade" id="single-slide-four">
                                                <!--Single Product Image Start-->
                                                <div class="single-product-img img-full">
                                                    <img src="<%=pp.getString("p_image")%>" alt="">
                                                    <a class="venobox" data-gall="gallery01" href="<%=pp.getString("p_image")%>"><i class="fa fa-search-plus"></i></a>
                                                </div>
                                                <!--Single Product Image End-->
                                            </div>
                                        </div>
                                        <!--Tab Content End-->
                                        <!--Tab Menu Start-->
                                        <div class="single-product-menu">
                                            <div class="nav single-slide-menu" role="tablist">
                                                <div class="single-tab-menu img-full">
                                                    <a class="active" data-toggle="tab" href="#single-slide-one"><img src="<%=pp.getString("p_image")%>" alt="" style="height:120px;"></a>
                                                </div>
                                                <div class="single-tab-menu img-full">
                                                    <a data-toggle="tab" href="#single-slide-two"><img src="<%=pp.getString("p_image")%>" alt="" style="height:120px;"></a>
                                                </div>
                                                <div class="single-tab-menu img-full">
                                                    <a data-toggle="tab" href="#single-slide-three"><img src="<%=pp.getString("p_image")%>" alt="" style="height:120px;"></a>
                                                </div>
                                                <div class="single-tab-menu img-full">
                                                    <a data-toggle="tab" href="#single-slide-four"><img src="<%=pp.getString("p_image")%>" alt="" style="height:120px;"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--Tab Menu End-->
                                    </div>
                                    <div class="col-md-7">
                                        <div class="single-product-content">
                                            <h1 class="single-product-name chi-font"><%=pp.getString("p_name")%></h1>
                                            <div class="rating">
                                                <span class="star"></span>
                                                <span class="star"></span>
                                                <span class="star"></span>
                                                <span class="star"></span>
                                                <span class="star star_bl"></span>
                                            </div>
                                            <div class="single-product-price">
                                                <div class="product-discount">
                                                    <span class="price chi-font">$<%=pp.getString("p_price")%></span>
                                                    <span class="discount">-20%</span>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <p class="chi-font" style="font-size: 22px;"><%=pp.getString("p_textarea")%></p>
                                            </div>
                                            <div class="single-product-action">
                                                
                                                <div class="product-variants-item">
                                                    
                                                    <span class="control-label chi-font">數量</span>
                                                    <form id='myform' method='POST' action='insertlist4.jsp'>
                                                      <%out.println(" <input type='hidden' name='pid' value='"+aa+"'>");%>
                                                        <input type='button' value='-' class='qtyminus' field='quantity' />
                                                        <input type='text' name='quantity' value='1' class="qty pl-0" />
                                                        <input type='button' value='+' class='qtyplus' field='quantity' />
                                                   
                                                </div>
                                                
                                            </div>
                                            
                                            <div class="bt-5">

                                                
                                                
                                               <button type='submit' class='btn btn-success btn-md mr-3s chi-font'>加入購物車</button>
                                        <%
                                                out.println("<a href='add_shopping.jsp?p_id="+aa+"&act=love2&amount=1' data-toggle='tooltip' data-placement='top' title='Wishlist'>"+"<button type='button' name='love' class='btn btn-info btn-md mr-3s chi-font'>"+"我的最愛"+"</button>"+"</a>");
    
                                                %>
                                               
                                                 </form>
                                                <span class="h5 ml-5 chi-font">分享至:</span>
                                                <ul class="share-buttons" style="margin: -20px -10px 0px 380px;">
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
                            <%
                                }
                            %>
                            <!--Single Product End-->
                            <!--Single Product Review Tab Start-->
                            <div class="single-product-review-tab mt-80" style="margin-bottom: 80px;">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="single-product-review-and-description-area">
                                                <!--Review And Description Tab Menu Start-->
                                                <ul class="nav dec-and-review-menu" style="border-radius: 15px;">
                                                    <li>
                                                        <a class="active chi-font" data-toggle="tab" href="#description">商品敘述</a>
                                                    </li>
                                                    <li>
                                                        <a class="chi-font" data-toggle="tab" href="#product-details">相關評論</a>
                                                    </li>
                                                    <li>
                                                        <a class="chi-font" data-toggle="tab" href="#reviews">填寫評論</a>
                                                    </li>
                                                </ul>
                                                <!--Review And Description Tab Menu End-->
                                                <!--Review And Description Tab Content Start-->

                                                <div class="tab-content product-review-content-tab mt-30" id="myTabContent-4">
                                                    <div class="tab-pane fade show active" id="description">
                                                        <div class="single-product-description chi-font">
                                                            <p style="font-size: 20px">
                                                             <i class="fas fa-check"></i> 接單後新鮮產現作，當日冷藏宅配送出 
                                                            </p>
                                                            <p style="font-size: 20px">
                                                               <i class="fas fa-check"></i> 本產品不含防腐劑及人工添加物，請趁新鮮食用，產品存期限請詳見包裝盒面標示
                                                            </p>
                                                            <p style="font-size: 20px">
                                                               <i class="fas fa-check"></i>未食用完畢請於1-2小時內放置冷藏保存，確保產品新鮮
                                                            </p>
                                                            
                                                        </div>
                                                    </div>
                                                    <!--product comment-->
                                                    <div class="tab-pane fade single-box" id="product-details">
                                                        <div class="product-details">
                                                            <div class="product_comment" style="border-radius: 15px;">
                                                                <div class="container">
                                                                    <div class="row">
                                                                        <div class="col-4 comment_str" style="max-width: 25%;">
                                                                            <p class="level_txt chi-font">
                                                                                <span class="discount" style="font-size: 25px;margin-top: 5px;">熱度 &nbsp;<%=pp.getString("p_hot")%></span>
                                                                            <div class="rating" style="margin-top: -15px;">
                                                                                <span class="star"></span>
                                                                                <span class="star"></span>
                                                                                <span class="star"></span>
                                                                                <span class="star"></span>
                                                                                <span class="star star_bl"></span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-8 chi-font">
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
                                                %>
                                                                      </div>
                                                                    </div>
                                                                </div>

                                                                <div id="all" class="mt-5">
                                                                    <%
                                                                       sql="SELECT * FROM list_shopping  where p_id='"+aa+"' and l_boolean='1'" ;
                                                                       ResultSet tmp=con.createStatement().executeQuery(sql);
                                                                       while(tmp.next())
                                                                      {
                                                                        %>
                                                                        <i class="fas fa-user-circle" style="font-size: 25px; "></i>
                                                                        <p style="display: inline;"><%=tmp.getString("l_name")%></p>
                                                                        <div class="rating">
                                                                         <%

                                                                           
                                                                           if(Integer.valueOf(tmp.getString("stars"))==5 ){                      
                                                                              out.println("<span class='star ' style='font-size: 20px;width: 20px'></span>");
                                                                              out.println("<span class='star ' style='font-size: 20px;width: 20px'></span>");
                                                                              out.println("<span class='star ' style='font-size: 20px;width: 20px'></span>");
                                                                              out.println("<span class='star ' style='font-size: 20px;width: 20px'></span>");
                                                                              out.println("<span class='star ' style='font-size: 20px;width: 20px'></span>");                             
                                                                            }
                                                                            else if(Integer.valueOf(tmp.getString("stars"))==4)
                                                                            {
                                                                                 out.println("<span class='star ' style='font-size: 20px;width: 20px'></span>");
                                                                                out.println("<span class='star ' style='font-size: 20px;width: 20px'></span>");
                                                                                out.println("<span class='star ' style='font-size: 20px;width: 20px'></span>");
                                                                                out.println("<span class='star ' style='font-size: 20px;width: 20px'></span>");
                                                                                out.println("<span class='star star_bl' style='font-size: 20px;width: 20px'></span>");
                                                                            }           
                                                                            else if(Integer.valueOf(tmp.getString("stars"))==3)
                                                                            {
                                                                                out.println("<span class='star ' style='font-size: 20px;width: 20px'></span>");
                                                                                out.println("<span class='star ' style='font-size: 20px;width: 20px'></span>");
                                                                                out.println("<span class='star ' style='font-size: 20px;width: 20px'></span>");
                                                                                out.println("<span class='star star_bl' style='font-size: 20px;width: 20px'></span>");
                                                                                out.println("<span class='star star_bl' style='font-size: 20px;width: 20px'></span>");
                                                                            }
                                                                            else if(Integer.valueOf(tmp.getString("stars"))==2){
                                                                            out.println("<span class='star ' style='font-size: 20px;width: 20px'></span>");
                                                                                out.println("<span class='star ' style='font-size: 20px;width: 20px'></span>");
                                                                                out.println("<span class='star star_bl' style='font-size: 20px;width: 20px'></span>");
                                                                                out.println("<span class='star star_bl' style='font-size: 20px;width: 20px'></span>");
                                                                                out.println("<span class='star star_bl' style='font-size: 20px;width: 20px'></span>");
                                                                            }
                                                                            else if(Integer.valueOf(tmp.getString("stars"))==1){
                                                                             out.println("<span class='star ' style='font-size: 20px;width: 20px'></span>");
                                                                                out.println("<span class='star star_bl' style='font-size: 20px;width: 20px'></span>");
                                                                                out.println("<span class='star star_bl' style='font-size: 20px;width: 20px'></span>");
                                                                                out.println("<span class='star star_bl' style='font-size: 20px;width: 20px'></span>");
                                                                                out.println("<span class='star star_bl' style='font-size: 20px;width: 20px'></span>");

                                                                        }
                                                                        
                                                                        %>
                                                                        </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;"><%=tmp.getString("message")%></p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                      <%=tmp.getString("date")%>
                                                                    </p>
                                                                    <hr>

                                                                    <%
                                                                      }
                                                                     
                                                                    %>
                                                                    
                                                                </div>
                                                                
                                                                


                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane fade chi-font" id="reviews">
                                                        <div class="review-page-comment">
                                                            
                                                            <div class="review-form">
                                                                <form action="product_mess.jsp" method="post">
                                                                    <label>評價<sup class="required">*</sup></label>
                                                                    <div class="ratings">
                                                                            <input type="radio" id="star5" name="str" value="5" hidden>
                                                                            <label for="star5" class="stars"></label>
                                                                     
                                                                             <input type="radio" id="star4" name="str" value="4" hidden >
                                                                             <label for="star4" class="stars"></label>
                                                                     
                                                                             <input type="radio" id="star3" name="str" value="3"  hidden >
                                                                             <label for="star3" class="stars"></label>
                                                                        
                                                                             <input type="radio" id="star2" name="str" value="2" hidden >
                                                                             <label for="star2" class="stars "></label>
        
                                                                             <input type="radio" id="star1" name="str" value="1" hidden>
                                                                             <label for="star1" class="stars"></label>
                                                                       
                                                                    </div>
                                                                 

                                                                    <label>名字<sup class="required">*</sup></label>
                                                                    <input type="text" placeholder="name" name="name">
                                                                    <label>評論內容<sup class="required">*</sup></label>
                                                                    <textarea id="content" placeholder="message" name="message"></textarea>
                                                                     <%
                                                                        out.println("<input type='hidden' name='pid' value='"+aa+"'>");
                                                                    %>
                                                                    <div class="send-your-review">
                                                                        
                                                                        <div class="send-cancel-btn">
                                                                            <button class="send-btn">Send</button>
                                                                            or
                                                                            <button class="send-btn" type="reset">Cancel</button>
                                                                            
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
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
            
            <script src="assets/js/classie.js"></script>
            <script src="assets/js/gnmenu.js"></script>
            <script src="assets/js/modernizr.custom.js"></script>
            <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
            <script src="assets/js/bootstrap.min.js"></script>
            <script src="assets/js/bootstrap.bundle.min.js"></script>
            <script src="assets/js/wow.min.js"></script>
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
            <script>
            new gnMenu(document.getElementById('gn-menu'));
            </script>
            <script>
            $(document).ready(function() {
            $("#myBtn").click(function() {
            $("#mySign").modal();
            });
            });
            </script>
            <!--登入跳進註冊 -->
            <script>
            $("#pop-reg").on('click', function() {
            $("#close-login").trigger("click");
            $('#myModal').modal();
            });
            </script>
            <!--
            <script>
            $(".slider").slick({
            dots: true,
            infinite: true,
            slidesToShow: 3,
            slidesToScroll: 3
            });
            </script>
            -->
            <script>
            var el = document.querySelector('.more');
            var btn = el.querySelector('.more-btn');
            var menu = el.querySelector('.more-menu');
            var visible = false;
            function showMenu(e) {
            e.preventDefault();
            if (!visible) {
            visible = true;
            el.classList.add('show-more-menu');
            menu.setAttribute('aria-hidden', false);
            document.addEventListener('mousedown', hideMenu, false);
            }
            }
            function hideMenu(e) {
            if (btn.contains(e.target)) {
            return;
            }
            if (visible) {
            visible = false;
            el.classList.remove('show-more-menu');
            menu.setAttribute('aria-hidden', true);
            document.removeEventListener('mousedown', hideMenu);
            }
            }
            btn.addEventListener('click', showMenu, false);
            </script>
            <!--    置頂按鈕-->
            <!--            wow.js前置-->
            <script>
            new WOW().init();
            </script>
            
            <script>
            window.onbeforeunload = function() {
            window.scrollTo(0, 0);
            }
            </script>
            
            
        </body>
    </html>