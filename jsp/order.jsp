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

    <div class="mt-5" style="position:relative;top:13px;">
        <img src="assets/images/post7.png" style="width:100%;">
    </div>
    
    <div class="container mb-5" style="margin-top:50px;">
        <form action="jsp/confirm.jsp">

            <div class="row">
                <div class="col-50 p-3">
                    <%
                      
                        sql="SELECT * FROM member, shopping_cart WHERE member.m_account='"+acc+"' AND member.m_account=shopping_cart.m_account; ";
                        ResultSet list = con.createStatement().executeQuery(sql);
                        list.next();
                    %>
                    <h3>聯絡資訊</h3>
                    <label for="fname"><i class="fa fa-user"></i> 姓名</label>
                    <% out.println("<input type='text' id='fname' name='firstname' placeholder='姓名' value='"+list.getString("m_firstname")+list.getString("m_lastname")+"' >"); %>
                    <label for="email"><i class="fa fa-envelope"></i> Email</label>
                    <input type="text" id="email" name="email" placeholder="***@gmail.com" value="<%=list.getString("m_email")%>">
                    <label for="phone"><i class="fa fa-phone"></i> 電話</label>
                    <input type="text" id="email" name="email" placeholder="09-xxx-xxx" value="<%=list.getString("m_tel")%>">
                    <label for="city"><i class="fa fa-globe-asia"></i> 國家</label>
                    <input type="text" id="city" name="city" placeholder="國家" value="國家">
                    <div class="row">
                        <div class="col-50">
                            <label for="state">地址</label>
                            <input type="text" id="state" name="state" placeholder="地址" value="<%=list.getString("m_address")%>">
                        </div>
                    </div>
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