<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <title>商品</title>
    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,900' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Bree+Serif' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="assets/css/style_index.css">
    <!--product start-->
    <link rel="stylesheet" type="text/css" href="assets/css/star.css">
    <link rel="stylesheet" href="assets/css/product_slick.css">
    <link rel="stylesheet" href="assets/css/product-iconic-font.css">
    <link rel="stylesheet" href="assets/css/product_default.css">
    <link rel="stylesheet" href="assets/css/product_style.css">
    <link rel="stylesheet" href="assets/css/product.css">
    <!--product end-->
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/component.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/style_index.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/animate.css" />
    <!--    product-side start-->

    <link rel="stylesheet" type="text/css" href="assets/css/product-side.css">
    <!--    product-side end-->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC:700&display=swap" rel="stylesheet">
</head>

<body class="">
   
   <div class="mt-5">
        <img src="assets/images/post4.png" class="img-fluid">
    </div>
    <div>
        <img src="assets/images/pic0.png" class="img-fluid">
    </div>
    <div class="naccs container-fluid">
            <div class="row">
             <div class="gc p-5 col-xl-3 col-md-3">
                <div class="menu">
                    <div class="active"><span class="light"></span><span>商品總覽</span></div>
                    <div><span class="light"></span><span>和菓子</span></div>
                    <div><span class="light"></span><span>西式甜點</span></div>
                    <div><span class="light"></span><span>日式料理</span></div>
                </div>
            </div>
            <div class="p-3 col-xl-9 col-md-3" style="width:100%;">
                <ul class="nacc">
                    <li class="active">
                        <!-- 商品總覽 START -->
                        <div class="product-area" >
                            <div class="container">
                                <!-- Section-title start -->
                                <div class="row">
                                    <div class="col-xl-12">
                                        <div class="section-title text-center">
                                            <h2 class="title-border">商品總覽</h2>
                                        </div>
                                    </div>
                                </div>
                                <!-- Section-title end -->
                                <div class="container">
                                    <div class="row">
                      
                                            <%
                                            sql="SELECT DISTINCT p_id, p_name, p_price, p_image, p_originprice,p_strcss,p_strhot FROM product; ";
                                            ResultSet tmp = con.createStatement().executeQuery(sql);
                                            int count = 0;
                                            while(tmp.next())
                                            {
                                                   out.println("<div class='single-product col-lg-3'>");
                                                    out.println("<div class='product-img'>");
                                                        out.println("<span class='"+tmp.getString("p_strcss")+"'>"+tmp.getString("p_strhot")+"</span>");
                                                        out.println("<a href='single-product.html'>"+"<img src='"+tmp.getString("p_image")+"'/>"+"</a>");
                                                        out.println("<div class='product-action clearfix'>");
                                                        out.println("<a href='#' data-toggle='tooltip' data-placement='top' title='Wishlist'>"+"<i class='zmdi zmdi-favorite-outline'>"+"</i>"+"</a>");
                                                        out.println("<a href='#' data-toggle='tooltip' data-placement='top' title='Add To Cart'>"+"<i class='zmdi zmdi-shopping-cart-plus'>"+"</i>"+"</a>");
                                                    out.println("</div>");
                                                out.println("</div>");
                                                out.println("<div class='product-info clearfix'>");
                                                    out.println("<div class='fix'>");
                                                        out.println("<h4 class='post-title floatleft'>"+"<a href='#'>"+tmp.getString("p_name")+"</a>"+"</h4>");
                                                        out.println("<p class='floatright hidden-sm hidden-xs'>$"+tmp.getString("p_originprice")+"</p>");
                                                    out.println("</div>");
                                                    out.println("<div class='fix'>");
                                                        out.println("<span class='pro-price floatleft'>$"+tmp.getString("p_price")+"</span>");
                                                        out.println("<span class='pro-rating floatright'>");
                                                            out.println("<div class='rating'>");
                                                                out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                                out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                                out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                                out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                                out.println("<span class='star star_bl' style='font-size: 20px; width: 20px'>"+"</span>");
                                                            out.println("</div>");
                                                        out.println("</span>");
                                                    out.println("</div>");
                                                    out.println("</div>");
                                                    out.println("</div>");

                                                    count++;
                                                }

                                                    

                                                %>
                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                    

           
                    </li>
                     <!-- 商品總覽 START -->
                    <li>
                        <!--和菓子 START -->
                        <div class="product-area" >
                            <div class="container">
                                <!-- Section-title start -->
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="section-title text-center">
                                            <h2 class="title-border">和菓子</h2>
                                        </div>
                                    </div>
                                </div>
                                <!-- Section-title end -->
                                 <div class="container">
                                    <div class="row">
<%
                                        sql="SELECT DISTINCT p_id, p_name, p_price, p_image, p_originprice,p_class,p_strcss,p_strhot FROM product WHERE p_class='0'; ";
                                        tmp = con.createStatement().executeQuery(sql);
                                           count = 0;
                                            while(tmp.next())
                                            {
                                                   out.println("<div class='single-product col-lg-3'>");
                                                    out.println("<div class='product-img'>");
                                                         out.println("<span class='"+tmp.getString("p_strcss")+"'>"+tmp.getString("p_strhot")+"</span>");
                                                        out.println("<a href='single-product.html'>"+"<img src='"+tmp.getString("p_image")+"'/>"+"</a>");
                                                        out.println("<div class='product-action clearfix'>");
                                                        out.println("<a href='#' data-toggle='tooltip' data-placement='top' title='Wishlist'>"+"<i class='zmdi zmdi-favorite-outline'>"+"</i>"+"</a>");
                                                        out.println("<a href='#' data-toggle='tooltip' data-placement='top' title='Add To Cart'>"+"<i class='zmdi zmdi-shopping-cart-plus'>"+"</i>"+"</a>");
                                                    out.println("</div>");
                                                out.println("</div>");
                                                out.println("<div class='product-info clearfix'>");
                                                    out.println("<div class='fix'>");
                                                        out.println("<h4 class='post-title floatleft'>"+"<a href='#'>"+tmp.getString("p_name")+"</a>"+"</h4>");
                                                        out.println("<p class='floatright hidden-sm hidden-xs'>$"+tmp.getString("p_originprice")+"</p>");
                                                    out.println("</div>");
                                                    out.println("<div class='fix'>");
                                                        out.println("<span class='pro-price floatleft'>$"+tmp.getString("p_price")+"</span>");
                                                        out.println("<span class='pro-rating floatright'>");
                                                            out.println("<div class='rating'>");
                                                                out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                                out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                                out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                                out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                                out.println("<span class='star star_bl' style='font-size: 20px; width: 20px'>"+"</span>");
                                                            out.println("</div>");
                                                        out.println("</span>");
                                                    out.println("</div>");
                                                    out.println("</div>");
                                                    out.println("</div>");

                                                    count++;

                                                }

                                                    

                                                %>
                                      </div>
                                    </div>
                            </div>
                        </div>
                    </li>
                    <!--和菓子 END -->
                    <li>
                        <!-- 西式甜點 START -->
                        <div class="product-area" >
                            <div class="container">
                                <!-- Section-title start -->
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="section-title text-center">
                                            <h2 class="title-border">西式甜點</h2>
                                        </div>
                                    </div>
                                </div>
                                <!-- Section-title end -->
                                <div class="container">
                                    <div class="row">
                                       <%
                                        sql="SELECT DISTINCT p_id, p_name, p_price, p_image, p_originprice,p_class,p_strcss,p_strhot FROM product WHERE p_class='1'; ";
                                        tmp = con.createStatement().executeQuery(sql);
                                           count = 0;
                                            while(tmp.next())
                                            {
                                                   out.println("<div class='single-product col-lg-3'>");
                                                    out.println("<div class='product-img'>");
                                                         out.println("<span class='"+tmp.getString("p_strcss")+"'>"+tmp.getString("p_strhot")+"</span>");
                                                        out.println("<a href='single-product.html'>"+"<img src='"+tmp.getString("p_image")+"'/>"+"</a>");
                                                        out.println("<div class='product-action clearfix'>");
                                                        out.println("<a href='#' data-toggle='tooltip' data-placement='top' title='Wishlist'>"+"<i class='zmdi zmdi-favorite-outline'>"+"</i>"+"</a>");
                                                        out.println("<a href='#' data-toggle='tooltip' data-placement='top' title='Add To Cart'>"+"<i class='zmdi zmdi-shopping-cart-plus'>"+"</i>"+"</a>");
                                                    out.println("</div>");
                                                out.println("</div>");
                                                out.println("<div class='product-info clearfix'>");
                                                    out.println("<div class='fix'>");
                                                        out.println("<h4 class='post-title floatleft'>"+"<a href='#'>"+tmp.getString("p_name")+"</a>"+"</h4>");
                                                        out.println("<p class='floatright hidden-sm hidden-xs'>$"+tmp.getString("p_originprice")+"</p>");
                                                    out.println("</div>");
                                                    out.println("<div class='fix'>");
                                                        out.println("<span class='pro-price floatleft'>$"+tmp.getString("p_price")+"</span>");
                                                        out.println("<span class='pro-rating floatright'>");
                                                            out.println("<div class='rating'>");
                                                                out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                                out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                                out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                                out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                                out.println("<span class='star star_bl' style='font-size: 20px; width: 20px'>"+"</span>");
                                                            out.println("</div>");
                                                        out.println("</span>");
                                                    out.println("</div>");
                                                    out.println("</div>");
                                                    out.println("</div>");

                                                    count++;

                                                }

                                                    

                                                %>
                                      </div>
                                    </div>
                            </div>
                        </div>
                    </li>
                    <!-- 西式甜點 END -->
                    <li>
                        <!--日式料理 START -->
                        <div class="product-area" >
                            <div class="container">
                                <!-- Section-title start -->
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="section-title text-center">
                                            <h2 class="title-border">日式料理</h2>
                                        </div>
                                    </div>
                                </div>
                                <!-- Section-title end -->
                                <div class="container">
                                    <div class="row">
                                      <%
                                        sql="SELECT DISTINCT p_id, p_name, p_price, p_image, p_originprice,p_class,p_strcss,p_strhot FROM product WHERE p_class='2'; ";
                                        tmp = con.createStatement().executeQuery(sql);
                                           count = 0;
                                            while(tmp.next())
                                            {
                                                   out.println("<div class='single-product col-lg-3'>");
                                                    out.println("<div class='product-img'>");
                                                         out.println("<span class='"+tmp.getString("p_strcss")+"'>"+tmp.getString("p_strhot")+"</span>");
                                                        out.println("<a href='single-product.html'>"+"<img src='"+tmp.getString("p_image")+"'/>"+"</a>");
                                                        out.println("<div class='product-action clearfix'>");
                                                        out.println("<a href='#' data-toggle='tooltip' data-placement='top' title='Wishlist'>"+"<i class='zmdi zmdi-favorite-outline'>"+"</i>"+"</a>");
                                                        out.println("<a href='#' data-toggle='tooltip' data-placement='top' title='Add To Cart'>"+"<i class='zmdi zmdi-shopping-cart-plus'>"+"</i>"+"</a>");
                                                    out.println("</div>");
                                                out.println("</div>");
                                                out.println("<div class='product-info clearfix'>");
                                                    out.println("<div class='fix'>");
                                                        out.println("<h4 class='post-title floatleft'>"+"<a href='#'>"+tmp.getString("p_name")+"</a>"+"</h4>");
                                                        out.println("<p class='floatright hidden-sm hidden-xs'>$"+tmp.getString("p_originprice")+"</p>");
                                                    out.println("</div>");
                                                    out.println("<div class='fix'>");
                                                        out.println("<span class='pro-price floatleft'>$"+tmp.getString("p_price")+"</span>");
                                                        out.println("<span class='pro-rating floatright'>");
                                                            out.println("<div class='rating'>");
                                                                out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                                out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                                out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                                out.println("<span class='star' style='font-size: 20px; width: 20px'>"+"</span>");
                                                                out.println("<span class='star star_bl' style='font-size: 20px; width: 20px'>"+"</span>");
                                                            out.println("</div>");
                                                        out.println("</span>");
                                                    out.println("</div>");
                                                    out.println("</div>");
                                                    out.println("</div>");

                                                    count++;

                                                }

                                                    

                                                %>
                                      </div>
                                    </div>
                            </div>
                        </div>
                                      </div>
                                    </div>
                            </div>
                        </div>
                    </li>
                    <!--日式料理 END -->
                </ul>
            </div>
        </div>
    </div>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
    <!-- product js start -->

    <script src="assets/js/product_slick.js"></script>
    <script src="assets/js/jquery-1.12.0.min.js"></script>
    <script src="assets/js/product_slick.js"></script>
    <script src="assets/js/jquery-1.12.0.min.js"></script>
    <script src="assets/js/product_slick.js"></script>
    <script src="assets/js/product_main.js"></script>
    <script src="assets/js/product-side.js"></script>
    <!-- product js end -->


    <script src="assets/js/classie.js"></script>
    <script src="assets/js/gnmenu.js"></script>
    <script src="assets/js/modernizr.custom.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/wow.min.js"></script>
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