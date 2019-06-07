<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>test</title>
        <!-- singleproduct CSS star-->
        <link rel="stylesheet" href="assets/css/style.css" />
        <link rel="stylesheet" type="text/css" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/venobox.css">
        <link rel="stylesheet" href="assets/css/product-iconic-font.css">
        <!-- singleproduct CSS end-->
        <link rel="shortcut icon" href="../favicon.ico">
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="assets/css/component.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style_index.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/animate.css" />
        
        <link rel="stylesheet" type="text/css" href="assets/css/component.css" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <!--    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">-->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
        <link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC:700&display=swap" rel="stylesheet">
        <script type='text/javascript' src='//platform-api.sharethis.com/js/sharethis.js#property=5ce40b2adc07bd00120823e5&product=inline-share-buttons' async='async'></script>
    </head>
    <body>
        <!--    側欄/開始-->
        <div class="">
            <ul id="gn-menu" class="gn-menu-main">
                <li class="gn-trigger">
                    <a class="gn-icon gn-icon-menu"><span>Menu</span></a>
                    <nav class="gn-menu-wrapper">
                        <div class="gn-scroller">
                            <ul class="gn-menu">
                                <li class="gn-search-item">
                                    <i class="fas fa-search p-4"></i>
                                    <input placeholder="Search" type="search" class="gn-search p-0" style="width:50%;">
                                </li>
                                <li class="gn-search-item"><a href="product1.html"><i class="fas fa-shopping-basket p-4"></i>Product</a></li>
                                <li class="gn-search-item"><a href="#"><i class="fas fa-users p-4"></i>About Us</a></li>
                                <li class="gn-search-item"><a href="#"><i class="far fa-question-circle p-4"></i><span class="p-1">FAQ</span></a></li>
                            </ul>
                            </div><!-- /gn-scroller -->
                        </nav>
                    </li>
                    <li><a class="codrops-icon codrops-icon-prev" href="#" data-toggle="modal" data-target="#mySign" id="myBtn">Sign in</a></li>
                    <li><a class="codrops-icon codrops-icon-prev" href="#" data-toggle="modal" data-target="#myModal"><span>Sign up</span></a></li>
                    
                    <li class="more p-1 chi-font">
                        <button id="more-btn" class="more-btn mr-5">
                        <h6 class="cont chi-font">歡迎，Midas</h6>
                        </button>
                        <div class="more-menu">
                            <div class="more-menu-caret">
                                <div class="more-menu-caret-outer"></div>
                                <div class="more-menu-caret-inner"></div>
                            </div>
                            <ul class="more-menu-items cont  " tabindex="-1" role="menu" aria-labelledby="more-btn" aria-hidden="true">
                                <li class="more-menu-item" role="presentation">
                                    <button type="button" class="more-menu-btn" role="menuitem">
                                    <h6 class="chi-font">會員專區</h6>
                                    </button>
                                </li>
                                <li class="more-menu-item" role="presentation">
                                    <button type="button" class="more-menu-btn" role="menuitem">
                                    <h6 class="chi-font">購物車</h6>
                                    </button>
                                </li>
                                <li class="more-menu-item" role="presentation">
                                    <button type="button" class="more-menu-btn" role="menuitem">
                                    <h6 class="chi-font">我的最愛</h6>
                                    </button>
                                </li>
                                <li class="more-menu-item" role="presentation">
                                    <button type="button" class="more-menu-btn" role="menuitem">
                                    <h6 class="chi-font">購物紀錄</h6>
                                    </button>
                                </li>
                                <li class="more-menu-item" role="presentation">
                                    <button type="button" class="more-menu-btn" role="menuitem">
                                    <h6 class="chi-font">登出</h6>
                                    </button>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <!--<li>
                        <div class="sharethis-inline-share-buttons cont p-3"></div>
                    </li>-->
                </ul>
            </div>
            <!--    側欄/結束-->
            <!--            註冊跳出頁面Start-->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabel" style="color: #FE938C;">
                            註冊
                            </h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                            </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <span style="color: #FE938C;">帳號</span><input style="max-width:85%;" class="form-control" type="search" placeholder="Account..." id="acc">
                                <span style="color: #FE938C;">密碼</span><input style="max-width:85%;" class="form-control" type="search" placeholder="Password..." id="psd">
                            </form>
                        </div>
                        <div class="modal-footer">
                            <form>
                                <button type="button" class="btn btn-default" data-dismiss="modal">關閉
                                </button>
                                <button type="submit" class="btn btn-primary">
                                註冊完成
                                </button>
                            </form>
                        </div>
                    </div>
                    </div><!-- /.modal -->
                </div>
                <!--            註冊跳出頁面--End-->
                <!-- Modal -->
                <div class="modal fade" id="mySign" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="myModalLabel" style="color: #FE938C;">
                                登入
                                </h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                                </button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="modal-body">
                                        <span style="color: #FE938C;">帳號</span><input style="max-width:85%;" class="form-control" type="search" placeholder="Account..." id="acc">
                                        <span style="color: #FE938C;">密碼</span><input style="max-width:85%;" class="form-control" type="search" placeholder="Password..." id="psd">
                                    </div>
                                    <button type="submit" class="btn btn-success btn-block">登入</button>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-danger login-cancel" data-dismiss="modal" id="close-login">取消</button>
                                <p class="mt-3">不是會員？
                                    <a href="#" id="pop-reg">註冊</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="wrapper">
                        <!--Single Product Start-->
                        <div class="single-product-area mt-80">
                            <div class="container">
                                <div class="row">
                                	<%
                                		String aa=request.getParameter("p_id");
                                		 sql="SELECT * FROM product WHERE p_id='"+aa+"'； ";
                                            ResultSet tmp = con.createStatement().executeQuery(sql);
                                            while(tmp.next())
                                            {
												out.println("<div class='col-md-5'>");

												out.println("<div class='tab-content product-details-large' id='myTabContent-3'>");
												out.println("<div class='tab-pane fade show active' id='single-slide-one'>");

												out.println("<div class-'single-product-img img-full'>");
												out.println("<img src'"+tmp.getString("p_image")+"'>");	
												out.println("<a class='venobox' date-gall='gallery01' href='"+tmp.getString("p_image")+"'>"+"<i class='fa fa-search-plus'>"+"</i>"+"</a>");
											out.println("</div>");
										out.println("</div>");

										out.println("<div class='tab-pane fade' id='single-slide-two'>");
											out.println("<div class-'single-product-img img-full'>");
												out.println("<img src'"+tmp.getString("p_image")+"'>");	
												out.println("<a class='venobox' date-gall='gallery01' href='"+tmp.getString("p_image")+"'>"+"<i class='fa fa-search-plus'>"+"</i>"+"</a>");
											out.println("</div>");
										out.println("</div>");

										out.println("<div class='tab-pane fade' id='single-slide-three'>");
											out.println("<div class-'single-product-img img-full'>");
												out.println("<img src'"+tmp.getString("p_image")+"'>");	
												out.println("<a class='venobox' date-gall='gallery01' href='"+tmp.getString("p_image")+"'>"+"<i class='fa fa-search-plus'>"+"</i>"+"</a>");
											out.println("</div>");
										out.println("</div>");

										out.println("<div class='tab-pane fade' id='single-slide-four'>");
											out.println("<div class-'single-product-img img-full'>");
												out.println("<img src'"+tmp.getString("p_image")+"'>");	
												out.println("<a class='venobox' date-gall='gallery01' href='"+tmp.getString("p_image")+"'>"+"<i class='fa fa-search-plus'>"+"</i>"+"</a>");
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
                                            }

                                	%>
                                    
                                        <!--Tab Content End-->
                                        <!--Tab Menu Start-->
                                        <div class="single-product-menu">
                                            <div class="nav single-slide-menu" role="tablist">
                                                <div class="single-tab-menu img-full">
                                                    <a class="active" data-toggle="tab" href="#single-slide-one"><img src="assets/images/desert/purin.jpg" alt="" style="height:120px;"></a>
                                                </div>
                                                <div class="single-tab-menu img-full">
                                                    <a data-toggle="tab" href="#single-slide-two"><img src="assets/images/desert/purin.jpg" alt="" style="height:120px;"></a>
                                                </div>
                                                <div class="single-tab-menu img-full">
                                                    <a data-toggle="tab" href="#single-slide-three"><img src="assets/images/desert/purin.jpg" alt="" style="height:120px;"></a>
                                                </div>
                                                <div class="single-tab-menu img-full">
                                                    <a data-toggle="tab" href="#single-slide-four"><img src="assets/images/desert/purin.jpg" alt="" style="height:120px;"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--Tab Menu End-->
                                    </div>
                                    <div class="col-md-7">
                                        <div class="single-product-content">
                                            <h1 class="single-product-name">商品名稱</h1>
                                            <div class="single-product-reviews">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                            <div class="single-product-price">
                                                <div class="product-discount">
                                                    <span class="price">$80.00</span>
                                                    <span class="discount">-20%</span>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <p>簡單介紹簡單介紹簡單介紹簡單介紹  </p>
                                            </div>
                                            <div class="single-product-action">
                                                
                                                <div class="product-variants-item">
                                                    
                                                    <span class="control-label">數量</span>
                                                    <form id='myform' method='POST' action='#'>
                                                        
                                                        <input type='button' value='-' class='qtyminus' field='quantity' />
                                                        <input type='text' name='quantity' value='0' class="qty pl-0" />
                                                        <input type='button' value='+' class='qtyplus' field='quantity' />
                                                    </form>
                                                </div>
                                                
                                            </div>
                                            
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
                                                <div class="tab-content product-review-content-tab mt-30" id="myTabContent-4">
                                                    <div class="tab-pane fade show active" id="description">
                                                        <div class="single-product-description">
                                                            <p>複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹複雜介紹</p>
                                                        </div>
                                                    </div>
                                                    <!--product comment-->
                                                    <div class="tab-pane fade" id="product-details">
                                                        <div class="product-details">
                                                            <div class="product_comment">
                                                                <div class="container">
                                                                    <div class="row">
                                                                        <div class="col-4 comment_str" style="max-width: 20%;">
                                                                            <p class="level_txt">4.9/5</p>
                                                                            <i class="fas fa-star"></i>
                                                                            <i class="fas fa-star"></i>
                                                                            <i class="fas fa-star"></i>
                                                                            <i class="fas fa-star"></i>
                                                                            <i class="fas fa-star"></i>
                                                                        </div>
                                                                        <div class="col-8">
                                                                            <button class="comment_btn tablinks"onclick="openCity(event, 'all')">  全部</button>
                                                                            <button class="comment_btn tablinks" onclick="openCity(event, 'five_star')">  5星(216)</button>
                                                                            <button class="comment_btn"
                                                                            onclick="openCity(event, 'four_star')">4星(103)</button>
                                                                            <button class="comment_btn" onclick="openCity(event, 'three_star')">3星(1)</button>
                                                                            <button class="comment_btn" onclick="openCity(event, 'two_star')">2星(1)</button>
                                                                            <button class="comment_btn" onclick="openCity(event, 'one_star')">1星(1)</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div id="all" class="tabcontent">
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">as*******</p>
                                                                    <div style="font-size: 5px;"">
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                    <hr>
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">as*******</p>
                                                                    <div style="font-size: 5px;"">
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                </div>
                                                                
                                                                <div id="five_star" class="tabcontent">
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">ax*******</p>
                                                                    <div style="font-size: 5px;"">
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                    <hr>
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">as*******</p>
                                                                    <div style="font-size: 5px;"">
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                </div>
                                                                <div id="four_star" class="tabcontent">
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">as*******</p>
                                                                    <div style="font-size: 5px;"">
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                    <hr>
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">a2*******</p>
                                                                    <div style="font-size: 5px;"">
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                </div>
                                                                <div id="three_star" class="tabcontent">
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">a3*******</p>
                                                                    <div style="font-size: 5px;"">
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                    <hr>
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">as*******</p>
                                                                    <div style="font-size: 5px;"">
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                </div>
                                                                <div id="two_star" class="tabcontent">
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">a4*******</p>
                                                                    <div style="font-size: 5px;"">
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                    <hr>
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">as*******</p>
                                                                    <div style="font-size: 5px;"">
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                </div>
                                                                <div id="one_star" class="tabcontent">
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">as*******</p>
                                                                    <div style="font-size: 5px;"">
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                    <hr>
                                                                    <i class="fas fa-user-circle" style="font-size: 25px; display: inline;"></i>
                                                                    <p style="display: inline;">as*******</p>
                                                                    <div style="font-size: 5px;"">
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                        <i class="fas fa-star"></i>
                                                                    </div>
                                                                    <p style="font-size: 15px;margin-top: 20px;">評論內容評論內容評論內容評論內容</p>
                                                                    
                                                                    <p style="font-size: 7px;margin-top: 20px;">
                                                                        2019-5-29  15:25:07
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane fade" id="reviews">
                                                        <div class="review-page-comment">
                                                            
                                                            <div class="review-form">
                                                                <form action="#">
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
            <!--singleproduct star-->
            <!--Venobox-->
            <script src="assets/js/venobox.min.js"></script>
            <script src="assets/js/count.js"></script>
            <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>
            <script src="assets/js/owl.carousel.min.js"></script>
            <script src="assets/js/slick.min.js"></script>
            <script src="assets/js/jquery.meanmenu.min.js"></script>
            <!--Venobox-->
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
            <!--
            <script>
            window.onbeforeunload = function() {
            window.scrollTo(0, 0);
            }
            </script>
            -->
            
        </body>
    </html>