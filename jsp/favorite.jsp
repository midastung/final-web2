<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>我的最愛</title>
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
    <body>
        <%

        String acc="";
        String pas="";
      //session.setAttribute("in",acc);the memory of the logged in account
        try{
                Cookie getC[]=request.getCookies();
                for(int i=0;i<getC.length;i++)
                {
                    if(getC[i].getName().equals("getin"))
                    {
                        String[] sp=getC[i].getValue().split("-");
                        acc=sp[0];
                        pas=sp[1];
                    }
                }
        
            }
        catch(Exception e)
        {

        
        }
        %>
        <!--    側欄/開始-->
        <div>
            <ul id="gn-menu" class="gn-menu-main" style="z-index:100;">
                <li class="gn-trigger">
                    <a class="gn-icon gn-icon-menu"><span>Menu</span></a>
                    <nav class="gn-menu-wrapper">
                        <div class="gn-scroller">
                            <ul class="gn-menu">
                                <li class="gn-search-item">
                                    <i class="fas fa-search p-4"></i>
                                    <input placeholder="Search" type="search" class="gn-search p-0">
                                </li>
                                <li class="gn-search-item"><a href="index.html"><i class="fas fa-home p-4"></i>Home</a></li>
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
                        <h6 class="cont">歡迎，Midas</h6>
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
            <!--            註冊跳出頁面--Start-->
            <div class="modal fade chi-font" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                        <form>
                            <div class="modal-body  chi-font">
                                <span style="color: #FE938C;" class="chi-font">帳號</span><input style="max-width:85%;" class="form-control" type="search" placeholder="Account..." id="acc">
                                <span style="color: #FE938C;" class="chi-font">密碼</span><input style="max-width:85%;" class="form-control" type="search" placeholder="Password..." id="psd">
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default chi-font" data-dismiss="modal">關閉
                                </button>
                                <button type="submit" class="btn btn-primary chi-font">
                                註冊完成
                                </button>
                            </div>
                        </form>
                    </div>
                    </div><!-- /.modal -->
                </div>
                <!--            註冊跳出頁面--End-->
                <!-- Modal -->
                <div class="modal fade chi-font" id="mySign" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title chi-font" id="myModalLabel" style="color: #FE938C;">
                                登入
                                </h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                                </button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="modal-body chi-font">
                                        <span style="color: #FE938C;" class="chi-font">帳號</span><input style="max-width:85%;" class="form-control" type="search" placeholder="Account..." id="acc">
                                        <span style="color: #FE938C;" class="chi-font">密碼</span><input style="max-width:85%;" class="form-control" type="search" placeholder="Password..." id="psd">
                                    </div>
                                    <button type="submit" class="btn btn-success btn-block chi-font">登入</button>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-danger login-cancel chi-font" data-dismiss="modal" id="close-login">取消</button>
                                <p class="mt-3 chi-font">不是會員？
                                    <a href="#" id="pop-reg" class="chi-font">註冊</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--    側邊欄/結束-->
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
                                    <div class="active"><span class="light"></span><span>最愛總覽</span></div>
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
                                                            <h2 class="title-border">我的最愛</h2>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Section-title end -->
                                                <div class="container">
                                                    <div class="row">

                                                        <div class="container">
                                                        <div class="row">
                                                              <%
                                                            ResultSet rs= con.createStatement().executeQuery("SELECT * FROM love where m_account='"+acc+"'");
                                                            ResultSet g_name;
                                                            while(rs.next())
                                                            {
                                                                g_name=con.createStatement().executeQuery("SELECT * FROM product WHERE p_id='"+tmp.getString("p_id")+"'")
                                                                g_name.next();
                                                                
                                                            }


                                                        %>
                                                            <div class="fav" style="background-color: #DDDDDD;" >
                                                              <p>尚未新增我的最愛， <a href="product.jsp">點此前往</a>挑選您喜愛的商品吧!</p>  
                                                            </div>
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
                                                            <div class="fav" style="background-color: #DDDDDD;" >
                                                              <p>尚未新增我的最愛， <a href="product.jsp">點此前往</a>挑選您喜愛的商品吧!</p>  
                                                            </div>
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
                                                                <h2 class="title-border" style="text-align: center;">西式甜點</h2>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Section-title end -->
                                                    <div class="container">
                                                        <div class="row">
                                                            <div class="fav" style="background-color: #DDDDDD;" >
                                                              <p>尚未新增我的最愛， <a href="product.jsp">點此前往</a>挑選您喜愛的商品吧!</p>  
                                                            </div>
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
                                                            <div class="fav" style="background-color: #DDDDDD;" >
                                                              <p>尚未新增我的最愛， <a href="product.jsp">點此前往</a>挑選您喜愛的商品吧!</p>  
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