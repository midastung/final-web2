<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>

<head>
    <title>header</title>
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/component.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/style_index.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/animate.css" />
   
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!--    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">-->

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
                                <input placeholder="Search" type="search" class="gn-search p-0">
                            </li>
                            <li class="gn-search-item"><a href="product1.html"><i class="fas fa-shopping-basket p-4"></i>Product</a></li>
                            <li class="gn-search-item"><a href="#"><i class="fas fa-users p-4"></i>About Us</a></li>
                            <li class="gn-search-item"><a href="#"><i class="far fa-question-circle p-4"></i><span class="p-1">FAQ</span></a></li>
                        </ul>
                    </div><!-- /gn-scroller -->
                </nav>
            </li>

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

    try{    
        if(acc==null||acc.equals("")||pas==null||pas.equals(""))
        {
                    out.println("<li>");
                    out.println("<a class='codrops-icon codrops-icon-prev' href='#'' data-toggle='modal' data-target='#mySign' id='myBtn'>"+"Sign in"+"</a>");
                    out.println("</li>");
%>
            
            <li><a class="codrops-icon codrops-icon-prev" href="#" data-toggle="modal" data-target="#myModal"><span>Sign up</span></a></li>
<%
        }
        else
        {       
                session.setAttribute("in",acc);
                sql="SELECT * FROM member WHERE m_account='"+acc+"' and m_password='"+pas+"'";
                ResultSet tmp=con.createStatement().executeQuery(sql);
                tmp.next();
                if(tmp.getString("m_level").equals("1"))
                {
                     out.println("<li>");
                    out.println("<a class='codrops-icon codrops-icon-prev' href='#'>"+"後台頁面"+"</a>");
                    out.println("</li>");
                    out.println("<li>");
                    out.println("<a class='codrops-icon codrops-icon-prev' href='#'>"+"登出"+"</a>");
                     out.println("</li>");
                     out.println("<li class='more p-1 chi-font dropdown'>");
                     out.println(" <a href='#' class='dropdown-toggle' data-toggle='dropdown'><span style='font-size: 20px;position:relative;top:-10%;'>"+"歡迎，"+tmp.getString("m_firstname")+"</span></a>");
                
%>
                <ul class="dropdown-menu">
                    <li class="p-3 cont btn-li">
                        <a href="member-area.html" style="text-decoration: none;" class="text-white"><h6 class="chi-font btn-li">後台管理</h6></a>
                    </li>
                    <li class="p-3 cont btn-li">
                        <a href="logout.jsp" style="text-decoration: none;" class="text-white"><h6 class="chi-font btn-li">登出</h6></a>
                    </li>
                </ul>
            </li>
<%
                }
             else 
                {
                     out.println("<li>");
                    out.println("<a class='codrops-icon codrops-icon-prev' href='#' >"+"購物車"+"</a>");
                    out.println("</li>");
                    out.println("<li>");
                    out.println("<a class='codrops-icon codrops-icon-prev' href='#'>"+"我的最愛"+"</a>");
                    out.println("</li>");
                    out.println("<li class='dropdown'>");
                     out.println("<a href='#' id='dropdownMenuButton' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>"+"歡迎，"+tmp.getString("m_firstname")+"</a>");
                
%>
             
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                  </div>
            </li>
<%
            }
        }
 %>

         <li>
                <div class="sharethis-inline-share-buttons cont p-3"></div>
            </li>
        </ul>
    </div>
<%
    }
    catch(Exception e)
    {
        
        //銷毁session：
     
        //清除cookie：
        try{
                Cookie getC[]=request.getCookies();
                for(int i=0;i<getC.length;i++)
                {
                    if(getC[i].getName().equals("getin"))
                    {
                        getC[i].setMaxAge(0);
                        response.addCookie(getC[i]);
                        response.sendRedirect("index.jsp");
                    }
                }
            }
        catch(Exception err)
        {
            response.sendRedirect("index.jsp");
        }
    }
%> 

           
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
                <form >
                    <div class="modal-body  chi-font">
                        <span style="color: #FE938C;" class="chi-font">帳號</span><input style="max-width:85%;" class="form-control" type="search" placeholder="Account..." id="acc" name="acc">
                        <span style="color: #FE938C;" class="chi-font">密碼</span><input style="max-width:85%;" class="form-control" type="search" placeholder="Password..." id="psd" name="psd">
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
                    <form action="login.jsp" method="post">
                        <div class="modal-body chi-font">
                            <span style="color: #FE938C;" class="chi-font">帳號</span><input style="max-width:85%;" class="form-control" type="search" placeholder="Account..." name="acc">
                            <span style="color: #FE938C;" class="chi-font">密碼</span><input style="max-width:85%;" class="form-control" type="search" placeholder="Password..." name="psd">
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

             <script>
                            $(function(){
                            $(".dropdown").hover(
                            function() {
                            $('.dropdown-menu', this).stop( true, true ).fadeIn("fast");
                            $(this).toggleClass('open');
                            $('b', this).toggleClass("caret caret-up");
                            },
                            function() {
                            $('.dropdown-menu', this).stop( true, true ).fadeOut("fast");
                            $(this).toggleClass('open');
                            $('b', this).toggleClass("caret caret-up");
                            });
                            });
            </script>
</body>

</html>
