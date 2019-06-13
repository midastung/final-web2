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
    <link rel="stylesheet" type="text/css" href="assets/css/confirm.css">
    <link rel="stylesheet" href="assets/css/animate.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!--    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">-->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC:700&display=swap" rel="stylesheet">
    <script type='text/javascript' src='//platform-api.sharethis.com/js/sharethis.js#property=5ce40b2adc07bd00120823e5&product=inline-share-buttons' async='async'></script>
</head>
<style>
    p{
        font-size: 20px;
    }
    .button {
    padding: 20px;
    margin: 5px 12px;
    width: 90%;

    /* Green */

    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
  
    font-size: 16px;
    transition-duration: 0.4s;
    cursor: pointer;
    border-radius: 15px;
}

.button1 {
    background-color: #f2f2f2;
    color: black;
    border: 2px solid #4CAF50;
}
.button1:hover {
    background-color: #4CAF50;
    color: white;
}
</style>
<body style="background-color: rgb(255,224,158);">
   

    <div class="mt-5" style="position:relative;top:13px;">
        <img src="assets/images/post6.png" style="width:100%;">
    </div>
    <!--comfirm star-->
    <%
        sql="SELECT * FROM list_shopping; ";
        ResultSet conf = con.createStatement().executeQuery(sql);
        conf.next();
    %>

    <div class="confirm_cont" style="border-radius:20px; ">
        <p class="intro_cont" style="line-height: 40px;">親愛的會員您好:</p>
        <p class="intro_cont" style="line-height: 40px;">這個訊息是來自***，告知您***已接獲你這次的訂購需求，並將以最快速度處理!</p>
        <p class="intro_cont" style="line-height: 40px;">感謝您對***的支持並承蒙訂購，以下資料是您此次的訂購明細，若有問題則請依訂單編號向我們查詢，謝謝您!</p>
        <p class="intro_cont" style="line-height: 40px;">***仍保有決定是否接受訂單及出貨與否之權利，出貨以及取貨通知函，將以Email方式處理!</p>
        <p class="intro_h">訂單明細</p>
        <p class="order_inf">訂單編號:<%= conf.getString("l_idd")%></p>
        <p class="order_inf">下訂單時間:<%= conf.getString("date")%></p>
        <p class="order_inf">配送方式:宅配</p>
        <p class="order_inf">付款方式:<%= conf.getString("payment")%></p>
        <p class="order_inf">收件人:</p>
        <p class="order_inf">應付金額:<%= conf.getString("amount")%></p>
        <p class="order_inf" style="margin-top: 70px;">訂單商品與名稱與數量:</p>
        <hr width="68%">
        <p class="order_inf" style="margin-top: 10px;">飯糰6份</p>
        <hr width="68%">
        <p class="intro_cont" style="margin-top: 70px;line-height: 40px;">為了保護您的個人資料安全，建議您可以隨時登入***，至會員專區，查詢訂單，最新訊息或修改基本資料。如果您有任何問題，請您至客服中心查詢相關資訊或來信給我們。</p>
        <p class="intro_cont" style="margin-top: 20px;line-height: 40px;">-***敬上</p>
         <input type="submit" class="button button1 cont" value="確認送出">
    </div>
    <!--comfirm end-->
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