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
   
   <div class="mt-5" >
        <img src="assets/images/post4.png" class="img-fluid">
    </div>
    <div>
        <img src="assets/images/pic0.png" class="img-fluid">
    </div>
      <h2 class="title-border cont mt-5" >我的最愛</h2>
    <div class="naccs container">
           
            
            <div>
                <ul class="nacc">
                    <li class="active">
                                <!-- Section-title end -->
                                <div class="container">
                                    <div class="row">
                      
                                            <%
                                            sql="SELECT * FROM  product, love WHERE love.m_account='"+acc+"' AND love.p_id=product.p_id; ";
                                            ResultSet tmp = con.createStatement().executeQuery(sql);
                                            int count = 0;
                                            while(tmp.next())
                                            {
                                                   out.println("<div class='single-product p-3'>");
                                                    out.println("<div class='product-img'>");
                                                        out.println("<span class='"+tmp.getString("p_strcss")+"'>"+tmp.getString("p_strhot")+"</span>");
                                                        out.println("<a href='all_single.jsp?p_id="+tmp.getString("p_id")+"'>"+"<img src='"+tmp.getString("p_image")+"'/>"+"</a>");
                                                        out.println("<div class='product-action clearfix'>");
                                                        out.println("<a href='del_favorite.jsp?p_id="+tmp.getString("p_id")+"'"+"data-toggle='tooltip' data-placement='top' title='trash'>"+"<i class='fas fa-trash-alt fa-2x'></i>"+"</a>");
                                                        out.println("<a href='add_shopping.jsp?p_id="+tmp.getString("p_id")+"&act=buy2&amount=1&outlink=2' data-toggle='tooltip' data-placement='top' title='Add To Cart'>"+"<i class='fas fa-cart-plus fa-2x'></i>"+"</a>");
                                                    out.println("</div>");
                                                out.println("</div>");
                                                out.println("<div class='product-info clearfix'>");
                                                    out.println("<div class='fix'>");
                                                        out.println("<h4 class='post-title floatleft'>"+"<a href='#'>"+tmp.getString("p_name")+"</a>"+"</h4>");
                                                        out.println("<p class='floatright hidden-sm hidden-xs'><s>$"+tmp.getString("p_originprice")+"</s></p>");
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