<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
    <head>
        <title>test</title>
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="assets/css/component.css" />
        <link rel="stylesheet" type="text/css" href="assets/css/style_index.css">
        <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">
        <link rel="stylesheet" type="text/css" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/animate.css" />
        <!--product start-->
        <link rel="stylesheet" type="text/css" href="assets/css/star.css">
        <link rel="stylesheet" href="assets/css/product_slick.css">
        <link rel="stylesheet" href="assets/css/product-iconic-font.css">
        <link rel="stylesheet" href="assets/css/product_default.css">
        <link rel="stylesheet" href="assets/css/product_style.css">
        <!--product end-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <!--    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">-->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
        <link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC:700&display=swap" rel="stylesheet">
        <script type='text/javascript' src='//platform-api.sharethis.com/js/sharethis.js#property=5ce40b2adc07bd00120823e5&product=inline-share-buttons' async='async'></script>
    </head>
    <body class="bg_image body_color">
        <div class="container-fluid hot-product">
            <div class="row">
                <div class="col-md-3 col-xl-3 index-color" style="margin-top: 36%;">
                    <img src="assets/images/icon/TP6.png" style="width:50%;margin-top:-20%;" class="cont">
                </div>
                <!-- PRODUCT-AREA START -->
                <div class="product-area col-xl-8 col-md-8 index-color" style="margin-top:32%;">
                    <div class="container">
                        <div class="row cus-row-30">
                            <div class="product-slider arrow-left-right" style="width:100%;">
                                <!-- Single-product start -->
                                <%
                                sql="SELECT * FROM product order by p_hot desc limit 6; ";
                                ResultSet tmp = con.createStatement().executeQuery(sql);
                                int i=0;
                                while(tmp.next()){
                                i++;
                                out.println("<div class='single-product col-lg-12'>");
                                    out.println("<div class='product-img'>");
                                        out.println("<span class='pro-label new-label'>No."+i+"</span>");
                                        out.println("<a href='all_single.jsp?p_id="+tmp.getString("p_id")+"'>"+"<img src='"+tmp.getString("p_image")+"'/>"+"</a>");
                                        out.println("<div class='product-action clearfix'>");
                                            out.println("<a href='add_shopping.jsp?p_id="+tmp.getString("p_id")+"&act=love&amount=1&outlink=2' data-toggle='tooltip' data-placement='top' title='Wishlist'>"+"<i class='fas fa-heart fa-2x'></i>"+"</a>");
                                                        out.println("<a href='add_shopping.jsp?p_id="+tmp.getString("p_id")+"&act=buy&amount=1&outlink=2' data-toggle='tooltip' data-placement='top' title='Add To Cart'>"+"<i class='fas fa-cart-plus fa-2x'></i>"+"</a>");
                                        out.println("</div>");
                                    out.println("</div>");
                                    out.println("<div class='product-info clearfix'>");
                                        out.println("<div class='fix'>");
                                            out.println("<h4 class='post-title floatleft'>"+"<a href='#'>"+tmp.getString("p_name")+"</a>"+"</h4>");
                                            out.println("<p class='floatright hidden-sm hidden-xs'>"+tmp.getString("p_originprice")+"</p>");
                                        out.println("</div>");
                                        out.println("<div class='fix'>");
                                            out.println("<span class='pro-price floatleft'>$"+tmp.getString("p_price")+"</span>");
                                            out.println("<span class='pro-rating floatright'>");
                                                out.println("<div class='rating'>");
                                                    out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                    out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                    out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                    out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                    out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                out.println("</div>");
                                            out.println("</span>");
                                        out.println("</div>");
                                    out.println("</div>");
                                out.println("</div>");
                                
                                }
                                %>
                                
                                <!-- Single-product end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--熱門商品/結束-->
        <!--廚師開始-->
        <div>
            <img src="assets/images/icon/bg-image2.png" class="img-fluid" style="width:130%;">
        </div>
        <div class="bg-white container-fluid">
            <div class="row">
                <div class="col-md-4 wow fadeInLeft" data-wow-delay="1.0s">
                    <img src="assets/images/icon/chef1.png" style="max-width:60%;" class="cont">
                </div>
                <div class="col-md-4">
                    <div class="row">
                        <div class="col-md-6" style="margin-right: 20%;">
                            <a href="product_class.jsp?p_class=0"><img src="assets/images/icon/jpdesert.png" style="max-width:180%;" class="chat1"></a>
                            <a href="product_class.jsp?p_class=1"><img src="assets/images/icon/jpdish.png" style="max-width:180%; margin:0% 0 0 100%;" class="chat1"></a>
                        </div>
                        <div class="col-md-6">
                            <a href="product_class.jsp?p_class=2"><img src="assets/images/icon/usdesert.png" style="max-width:150%;" class="chat1"></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 wow fadeInRight" data-wow-delay="1.0s">
                    <img src="assets/images/icon/chef2.png" style="max-width:60%;" class="cont">
                </div>
            </div>
        </div>
        <div class="container-fluid bg-white p-4">
        </div>
        <!--廚師結束-->
        <section id="features" class="parallax-section">
            <div class="container-fluid">
                <div class="row">
                    <div class="bg-white col-md-3 col-sm-6">
                        <div class="wow fadeInUp features-thumb chi-font" data-wow-delay="0.8s">
                            <span class=" cont">
                                <i class="far fa-clock fa-2x"></i>
                            </span>
                            <h3 class="cont mt-5">購物速度</h3>
                            <p class="cont mt-4">免除長時間排隊，省下您寶貴的時間</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="wow fadeInUp text-white features-thumb chi-font" data-wow-delay="1.2s">
                            <img src="assets/images/icon/truck.png" style="max-width:15%;margin-top:-2%" class="cont">
                            <h3 class="cont mt-4">便利物流</h3>
                            <p class="cont mt-4">宅配到府，讓您不用出門也能購物</p>
                        </div>
                    </div>
                    <div class="bg-dark col-md-3 col-sm-6 text-white">
                        <div class="wow fadeInUp color-white features-thumb chi-font" data-wow-delay="1.6s">
                            <span class=" cont">
                                <i class="fas fa-search fa-2x"></i>
                            </span>
                            <h3 class="cont mt-5">找你所愛</h3>
                            <p class="cont mt-4">尋找全國各處的美食，滿足你的味蕾</p>
                        </div>
                    </div>
                    <div class="bg-white col-md-3 col-sm-6">
                        <div class="wow fadeInUp features-thumb chi-font" data-wow-delay="1.8s">
                            <div class="p-2">
                                <img src="assets/images/icon/chef.png" style="max-width:15%;margin-top:-5%" class="cont">
                            </div>
                            <h3 class="cont mt-4">御用廚師</h3>
                            <p class="cont mt-4">皇家御用廚師，親自操刀料理</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--  下滑動圖-->
        <section id="quotes" class="parallax-section" style="background-position: 50% 179px;">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-offset-1 col-md-12 col-sm-12 cont">
                        <h2 class="wow fadeInUp " data-wow-delay="0.8s"> <i class="wow fadeInUp fa fa-star" data-wow-delay="0.6s"></i>&nbsp;Shop more, wait less</h2>
                        <!-- <p class="wow fadeInUp" data-wow-delay="1s">Curabitur at pulvinar ante. Duis dui urna, faucibus eget felis eu, iaculis congue sem.</p> -->
                    </div>
                </div>
            </div>
        </section>
        <!--            四格資料-->
        <section id="experience" class="parallax-section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 col-sm-6" style="padding:0;">
                        <iframe style="position:relative; width:100%; height:100%; padding:0rem; margin-bottom:0rem" src="https://www.youtube.com/embed/-D8MOeH9oYk" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="color-white experience-thumb">
                            <div class="wow fadeInUp section-title" data-wow-delay="0.8s">
                                <h1>本站特色</h1>
                                <p class="color-white">快來感受一下這令人愉悅的新購物體驗</p>
                            </div>
                            <div class="wow fadeInUp color-white media" data-wow-delay="1.2s">
                                <div class="media-object">
                                    <i class="fa fa-check"></i>
                                </div>
                                <div class="media-body">
                                    <h3 class="media-heading">快速的下單</h3>
                                    <p class="color-white mt-5">免除浪費時間在大太陽底下與人排隊，只要上網就能立刻下單</p>
                                </div>
                            </div>
                            <div class="wow fadeInUp color-white media" data-wow-delay="1.6s">
                                <div class="media-object media-left">
                                    <i class="fa fa-spinner"></i>
                                </div>
                                <div class="media-body">
                                    <h3 class="media-heading">新鮮送達</h3>
                                    <p class="color-white mt-5">我們所設計一整套SOP流程，會立即把剛出爐的料理送到您的面前</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="enterprise" class="parallax-section">
            <div class="container-fluid" style="padding:0%;">
                <div class="row" style="height:425px;">
                    <div class="col-md-6 col-sm-6">
                        <div class="color-white enterprise-thumb">
                            <div class="wow fadeInUp section-title" data-wow-delay="0.8s">
                                <h1>伍零貳館</h1>
                                <p class="color-white">總是能讓你滿意</p>
                            </div>
                            <div class="wow fadeInUp color-white media" data-wow-delay="1.2s">
                                <div class="">
                                    <i class="fa fa-line-chart"></i>
                                </div>
                                <div class="media-body">
                                    <h3 class="media-heading">你們的意見是我們成長的動力</h3>
                                    <p class="color-white">
                                        ★追蹤商店內的商品流量，獲取最受歡迎的分析，根據客戶的年齡/性別查找客戶的偏好，定期設計新的甜點
                                    </p>
                                </div>
                            </div>
                            <div class="wow fadeInUp color-white media" data-wow-delay="1.6s">
                                <div class="media-body">
                                    <h3 class="media-heading">提高您對我們的喜愛</h3>
                                    <p class="color-white">
                                        ★品質至上、最好的呈現給我們親愛的顧客
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6" style="padding-left: 0px;">
                        <div class="background-image" style="z-index:22;">
                            <div class="carousel slide" data-interval="3000" id="carousel-demo">
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-demo" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-demo" data-slide-to="1"></li>
                                    <li data-target="#carousel-demo" data-slide-to="2"></li>
                                </ol>
                                <div class="carousel-inner ">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="assets/images/banner2.jpg" alt="">
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="assets/images/banner1.jpg" alt="">
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="assets/images/banner4.jpg" alt="">
                                    </div>
                                    <a href="#carousel-demo" class="carousel-control-prev" data-slide="prev">
                                        <span class="carousel-control-prev-icon"></span>
                                    </a>
                                    <a href="#carousel-demo" class="carousel-control-next" data-slide="next">
                                        <span class="carousel-control-next-icon"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Contact Section -->
        <section id="contact" class="parallax-section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class="contact-form">
                            <div class="wow fadeInUp section-title" data-wow-delay="0.2s">
                                <h1 class="color-white">和我們打個招呼..</h1>
                                <p class="color-white">您的回饋就是令我們「伍零貳館」更好的動來源～</p>
                            </div>
                            <div id="contact-form">
                                <form action="index_mess.jsp" method="get" enctype="text/plain">
                                    <div class="wow fadeInUp" data-wow-delay="1s">
                                        <textarea name="fullname" class="form-control" placeholder="你的名字"></textarea>
                                    </div>
                                    <div class="wow fadeInUp" data-wow-delay="1.4s">
                                        <textarea name="message" rows="5" class="form-control"  placeholder="寫下您的意見..."></textarea>
                                    </div>
                                    <div class="wow fadeInUp col-md-6 col-sm-8" data-wow-delay="1.6s">
                                        <input type="submit" class="form-control" value="Send" >
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="col-md-3 col-sm-6">
                        <div class="background-image contact-img"></div>
                    </div> -->
                    <div class="bg-dark col-md-6 col-sm-12 text-white">
                        <div class="contact-thumb">
                            <div class="wow fadeInUp contact-info" data-wow-delay="0.6s">
                               <h3 class="color-white">歡迎參觀總店舖</h3>
                                <p> 346 Tokashiki, Tokashiki-son, Shimajiri-gun,</p>
                                <p> Okinawa 901-3501日本</p>
                            </div>
                             <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1460.235771470736!2d127.36809811257785!3d26.199003437784498!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x34e553cc7a3f683b%3A0x54c1b0edd85d3d36!2zQ2FmZSZTb2JhIOOCt-ODvOODleODrOODs-ODiSBKci4!5e0!3m2!1szh-TW!2stw!4v1560166530170!5m2!1szh-TW!2stw" width="600" height="350" width="400" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/wow.min.js"></script>
        <script>
        new gnMenu(document.getElementById('gn-menu'));
        </script>
        <!-- product js start -->
        <script src="assets/js/jquery-1.12.0.min.js"></script>
        <script src="assets/js/product_meanmenu.js"></script>
        <script src="assets/js/product_slick.js"></script>
        <script src="assets/js/product_wow.js"></script>
        <script src="assets/js/product_main.js"></script>
        <!-- product js end -->
        <!--            wow.js前置-->
        <script>
        new WOW().init();
        </script>
        <script>
        function videoss() {
        if (document.getElementsByClassName("videoss")[0].style.height == "" || document.getElementsByClassName("videoss")[0].style.height == "0px") {
        document.getElementsByClassName("videoss")[0].style.height = "500px";
        } else {
        document.getElementsByClassName("videoss")[0].style.height = "0px";
        }
        }
        </script>
    </body>
</html>