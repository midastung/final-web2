<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <title>商品訂單</title>
    <!--orderinf css star-->
     <link rel="stylesheet" type="text/css" href="assets/css/order-inf.css" />
    <!--orderinf css end-->
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/component.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/style_index.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/animate.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!--    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">-->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC:700&display=swap" rel="stylesheet">
    <script type='text/javascript' src='//platform-api.sharethis.com/js/sharethis.js#property=5ce40b2adc07bd00120823e5&product=inline-share-buttons' async='async'></script>
</head>

<body style="background-color: rgb(236,174,106);">
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
                                <input placeholder="Search" type="search" class="gn-search p-0">
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
                <div class="modal-body  chi-font">
                    <form>
                        <span style="color: #FE938C;" class="chi-font">帳號</span><input style="max-width:85%;" class="form-control" type="search" placeholder="Account..." id="acc">
                        <span style="color: #FE938C;" class="chi-font">密碼</span><input style="max-width:85%;" class="form-control" type="search" placeholder="Password..." id="psd">

                </div>
                <div class="modal-footer">

                    <button type="button" class="btn btn-default chi-font" data-dismiss="modal">關閉
                    </button>
                    <button type="submit" class="btn btn-primary chi-font">
                        註冊完成
                    </button>
                    </form>
                </div>
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
    
    
    <div class="mt-5">
        <img src="assets/images/post7.png" class="img-fluid">
    </div>
    
    <div class="container mb-5" style="margin-top:50px;">
        <form action="">

            <div class="row">
                <div class="col-50 p-3">
                    <h3>聯絡資訊</h3>
                    <label for="fname"><i class="fa fa-user"></i> 姓名</label>
                    <input type="text" id="fname" name="firstname" placeholder="姓名">
                    <label for="email"><i class="fa fa-envelope"></i> Email</label>
                    <input type="text" id="email" name="email" placeholder="***@gmail.com">
                    <label for="phone"><i class="fa fa-phone"></i> 電話</label>
                    <input type="text" id="email" name="email" placeholder="09-xxx-xxx">
                    <label for="city"><i class="fa fa-globe-asia"></i> 國家</label>
                    <input type="text" id="city" name="city" placeholder="國家">
                    <div class="row">
                        <div class="col-50">
                            <label for="state">縣市</label>
                            <input type="text" id="state" name="state" placeholder="縣市">
                        </div>
                        <div class="col-50">
                            <label for="zip">地區</label>
                            <input type="text" id="zip" name="zip" placeholder="地區">
                        </div>
                    </div>
                    <label for="adr">路名</label>
                    <input type="text" id="adr" name="address" placeholder="***路**號**樓">
                    <label for="fname">付款方式</label><br>
                    <select class="mb-3">
                        <option value="到貨付款">到貨付款</option>
                        <option value="信用卡">信用卡</option>
                        <option value="電子錢包">電子錢包</option>
                    </select>
                    <br>
                     </div>             
                    <input type="textarea" placeholder="備註">
                <input type="submit" class="button button1" value="確認送出">
            </div>
        </form>
    </div>
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