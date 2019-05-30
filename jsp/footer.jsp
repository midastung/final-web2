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
</head>

<body>
   

            <!-- Footer Section -->


            <footer class="text-light" style="background-color: #E3AE57;">
                <div class="container">
                    <div class="row wow fadeInUp footer-copyright" data-wow-delay="1.8s">
                        <div class="col-md-3 col-lg-4 col-xl-3 ">
                            <h5>About</h5>
                            <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                            <p class="mb-0">
                                Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression.
                            </p>
                        </div>

                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto">
                            <h5>Informations</h5>
                            <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                            <ul class="list-unstyled">
                                <li><a href="">Link 1</a></li>
                                <li><a href="">Link 2</a></li>
                                <li><a href="">Link 3</a></li>
                                <li><a href="">Link 4</a></li>
                            </ul>
                        </div>

                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto">
                            <h5>Others links</h5>
                            <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                            <ul class="list-unstyled">
                                <li><a href="">Link 1</a></li>
                                <li><a href="">Link 2</a></li>
                                <li><a href="">Link 3</a></li>
                                <li><a href="">Link 4</a></li>
                            </ul>
                        </div>

                        <div class="col-md-4 col-lg-3 col-xl-3">
                            <h5>Contact</h5>
                            <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                            <ul class="list-unstyled">
                                <li><i class="fa fa-home mr-2"></i> My company</li>
                                <li><i class="fa fa-envelope mr-2"></i> email@example.com</li>
                                <li><i class="fa fa-phone mr-2"></i> + 33 12 14 15 16</li>
                                <li><i class="fa fa-print mr-2"></i> + 33 12 14 15 16</li>
                            </ul>
                        </div>

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
