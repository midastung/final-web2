<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*, java.util.*" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <title>購物車</title>
    <!--cart css star-->
    <link rel="stylesheet" href="assets/css/bootstrap_cart.min.css">
    <link rel="stylesheet" href="assets/css/cart.css">
    <!--cart css end-->
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

<body style="background-color:rgb(255,184,121);">
    
    <div class="mt-5" style="position:relative;top:13px;">
        <img src="assets/images/post5.png" style="width:100%;" >
    </div>
    <div class="main-wrapper car">
        <!-- Cart Page Start -->
        <div class="cart_area  bg-color cart-style" data-bg-color="#ffffff" style="margin-top: 100px;margin-bottom: 100px;">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <form action="order_cart.jsp" method="post">
                            <!-- Cart Table -->
                            <div class="cart-table table-responsive mt-5">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="pro-thumbnail">Image</th>
                                            <th class="pro-title">Product</th>
                                            <th class="pro-price">Price</th>
                                            <th class="pro-quantity">Quantity</th>
                                            <th class="pro-subtotal">Total</th>
                                            <th class="pro-remove">Remove</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<%

                                    		sql="SELECT * FROM shopping_cart, product WHERE shopping_cart.m_account='"+acc+"' AND shopping_cart.p_id=product.p_id; ";
                                    		ResultSet tmp = con.createStatement().executeQuery(sql);
                                    		int count = 0;
                                    		while(tmp.next())
                                    		{
                                    			out.println("<tr>");
                                    			out.println("<td class='pro-thumbnail'>"+"<a href='all_single.jsp?p_id="+tmp.getString("p_id")+"'>"+"<img src='"+tmp.getString("p_image")+"'>"+"</a>"+"</td>");
                                    			out.println("<td class='pro-title' name='pname'>"+"<a href='all_single.jsp?p_id="+tmp.getString("p_id")+"'>"+tmp.getString("p_name")+"</a>"+"</td>");
                                    			out.println("<td class='pro-price'>"+"<span>$"+tmp.getString("p_price")+"</span>"+"</td>");
                                    			out.println("<td class='pro-quantity'>");

                                    			out.println("<div class='pro-qty'>"+"<input type='text' name='amount' value='"+tmp.getString("amount")+"'>"+"</div>");
                                    			out.println("</td>");
                                    			out.println("<td class='pro-subtotal'>"+"<span>$"+String.valueOf(Integer.parseInt(tmp.getString("p_price"))*Integer.parseInt(tmp.getString("amount")))+"</span>"+"</td>");
                                    			out.println("<td class='pro-remove'>"+"<a href='del_cart.jsp?s_id="+tmp.getString("s_id")+"'>"+"<i class='fas fa-trash-alt'>"+"</i>"+"</a>"+"</td>");
                                    			out.println("</tr>");
                                                out.println("<input type='hidden' name='pid' value='"+tmp.getString("p_id")+"'>");

                                    			count++;
                                    		}
                                           
                                    	%>
                                       
                                        <tr>
                                            <td> 
                                                <input type="submit" class="button button1" value="前往結帳">
                                            </td>
                                            <td>
                                                <a href="all_products.jsp"><input type="button" class="button button1" value="繼續選購"></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
                        <!-- cart JS -->
                        <script src="assets/js/cart_jquery.js"></script>
                        <script src="assets/js/cart_plugins.js"></script>
                        <script src="assets/js/cart_main.js"></script>
                        <!-- cart JS end -->
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