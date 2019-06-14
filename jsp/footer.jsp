<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <title>test</title>
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/component.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/style_index.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/animate.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC:700&display=swap" rel="stylesheet">

    <script type='text/javascript' src='//platform-api.sharethis.com/js/sharethis.js#property=5ce40b2adc07bd00120823e5&product=inline-share-buttons' async='async'></script>


    <style>
     
    </style>
</head>

<body class="">
   

            <!-- Footer Section -->

       
            <footer class="text-light chi-font" style="background-color: #E3AE57;">
                <div class="container">
                    <div class="row wow fadeInUp footer-copyright" data-wow-delay="1.8s">
                        <div class="col-md-3 col-lg-4 col-xl-3 ">
                            <h5>About</h5>
                            <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                            <p class="mb-0">
                                網站的設定是偏向於日式料理＆甜點，聚集國內外的五星級主廚，塑造出美食的集散地。利用網路購物、便利的物流，使原本的實體店面外，也進入在網際網路架設的用於販售商品的平台.
                            </p>
                        </div>

                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto">
                            <h5>Informations</h5>
                            <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                            <ul class="list-unstyled">
                                <li><a href="all_products.jsp">商品頁面</a></li>
                                <li><a href="member.jsp">會員專區</a></li>
                                <li><a href="aboutus.jsp">關於我們</a></li>
                                <li><a href="favorite_content.jsp">我的最愛</a></li>
                            </ul>
                        </div>

                        

                        <div class="col-md-4 col-lg-3 col-xl-3">
                            <h5>Contact</h5>
                            <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                            <ul class="list-unstyled">
                                <li><i class="fa fa-home mr-2"></i>伍零貳館</li>
                                <li><i class="fa fa-envelope mr-2"></i>fivezerotwo@gamil.com</li>
                                <li><i class="fa fa-phone mr-2"></i> + 87 87 87 87 87</li>
                                <li><i class="fa fa-print mr-2"></i> + 87 87 87 87 87</li>
                            </ul>
                        </div>
                    </div>
                    <br>
                    <div class="mt-5">
                        <pre class="cont text-white">DESSERT x DESIGN</pre>
                        <p class="cont mt-3"> 2019 伍零貳館. ALL RIGHTS RESERVED.</p>
                    </div>
                </div>
            </footer>

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
