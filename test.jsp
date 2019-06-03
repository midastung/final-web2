<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="getDB.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charest="utf-8">
		<title>期末專案</title>
		<!-- Google Font -->
		<link href='https://fonts.googleapis.com/css?family=Lato:400,700,900' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Bree+Serif' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
		<!--product start-->
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
											sql="SELECT DISTINCT p_id, p_name, p_price, p_image, p_originprice FROM product; ";
											ResultSet tmp = con.createStatement().executeQuery(sql);
											int count = 0;
											while(tmp.next())
											{
													out.println("<div class='single-product col-lg-3'>");
														out.println("<div class='product-img>");
															out.println("<span class='pro-label new-label'>"+"new"+"</span>");
																out.println("<a href='single-product.html'>"+"<img src='"+tmp.getString("p_image")+"'/>"+"</a>");
																out.println("<div class='product-action clearfix'>");
																out.println("<a href='#' data-toggle='tooltip' data-placement='top' title='Wishlist'>"+"<i class='zmdi zmdi-favorite-outline'>"+"</i>"+"</a>");
																out.println("<a href='#' data-toggle='tooltip  data-placement='top' title='Add To Cart'>"+"<i class='zmdi zmdi-shopping-cart-plus'>"+"</i>"+"</a>");
																out.println("</div>");
																out.println("</div>");

																out.println("<div class='product-info clearfix'>");
																out.println("<div class='fix'>");
																	out.println("<h4 class='post-title floatleft'>"+"<a href='#'>"+"dummy Product name"+"</a>"+"</h4>");
																	out.println("<p class='floatright hidden-sm hidden-xs'>"+"Furniture"+"</p>");
																out.println("</div>");
																
														
														
												%>
												
													<div class="fix">
                                                                    <span class="pro-price floatleft">$ 56.20</span>
                                                                    <span class="pro-rating floatright">
                                                                        <div class="rating">
                                                                            <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                            <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                            <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                            <span class="star" style="font-size: 20px;width: 20px"></span>
                                                                            <span class="star star_bl" style="font-size: 20px;width: 20px"></span>
                                                                        </div>
                                                                    </span>
                                                                </div>
                                                <%
                                                
                                            	out.println("</div>");
                                            	out.println("</div>");
                                            	count++;

												}

														con.close();

												%>
												<div class="single-product col-lg-3">
													<div class="product-img">
														<span class="pro-label sale-label">Sale</span>
														<a href="single-product.html"><img src="assets/images/dish/ramen.jpg" alt="" /></a>
														<div class="product-action clearfix">
															<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
															<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
														</div>
													</div>
													<div class="product-info clearfix">
														<div class="fix">
															<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
															<p class="floatright hidden-sm hidden-xs">Furniture</p>
														</div>
														<div class="fix">
															<span class="pro-price floatleft">$ 56.20</span>
															<span class="pro-rating floatright">
																<a href="#"><i class="zmdi zmdi-star"></i></a>
																<a href="#"><i class="zmdi zmdi-star"></i></a>
																<a href="#"><i class="zmdi zmdi-star"></i></a>
																<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																<a href="#"><i class="zmdi zmdi-star-half"></i></a>
															</span>
														</div>
													</div>
												</div>
												<div class="single-product col-lg-3">
													<div class="product-img">
														<span class="pro-label sale-label">Sale</span>
														<a href="single-product.html"><img src="assets/images/dish/ramen.jpg" alt="" /></a>
														<div class="product-action clearfix">
															<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
															<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
														</div>
													</div>
													<div class="product-info clearfix">
														<div class="fix">
															<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
															<p class="floatright hidden-sm hidden-xs">Furniture</p>
														</div>
														<div class="fix">
															<span class="pro-price floatleft">$ 56.20</span>
															<span class="pro-rating floatright">
																<a href="#"><i class="zmdi zmdi-star"></i></a>
																<a href="#"><i class="zmdi zmdi-star"></i></a>
																<a href="#"><i class="zmdi zmdi-star"></i></a>
																<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																<a href="#"><i class="zmdi zmdi-star-half"></i></a>
															</span>
														</div>
													</div>
												</div>
												<div class="single-product col-lg-3">
													<div class="product-img">
														<span class="pro-label new-label">new</span>
														<a href="single-product.html"><img src="assets/images/dish/onigiri.jpg" alt="" /></a>
														<div class="product-action clearfix">
															<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
															<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
														</div>
													</div>
													<div class="product-info clearfix">
														<div class="fix">
															<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
															<p class="floatright hidden-sm hidden-xs">Furniture</p>
														</div>
														<div class="fix">
															<span class="pro-price floatleft">$ 56.20</span>
															<span class="pro-rating floatright">
																<a href="#"><i class="zmdi zmdi-star"></i></a>
																<a href="#"><i class="zmdi zmdi-star"></i></a>
																<a href="#"><i class="zmdi zmdi-star"></i></a>
																<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																<a href="#"><i class="zmdi zmdi-star-half"></i></a>
															</span>
														</div>
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
											<%
												sql="SELECT DISTINCT p_id, p_name, p_price, p_image, p_originprice FROM product;";
												while(tmp.next())
												{
													out.println("<div class='container'>");
														out.println("<div class='row'>");
															out.println("<div class='single-product col-lg-3'>");
																out.println("<div class='p_image'>");
																out.println("<span class='[pro-label new-label'>"+"new"+"</span>");
																out.println("<a href='single-product.html'>"+"<img src="+tmp.getString("p_image")+"/>"+"</a>");
																out.println("<div class='product-action clearfix'>");
																	out.println("<a href='#' data-toggle='tooltip' data-placement='top' title='Wishlist'>"+"<i class='zmdi zmdi-favorite-outline'>"+"</i>"+"</a>");
																	out.println("<a href='#' data-toggle='tooltip' data-placement='top title='Add To Cart'>"+"<i class-'zmdi zmdi-shopping-cart-plus'>"+"</i>"+"</a>");
																out.println("</div>");
															out.println("</div>");
															out.println("<div class='product-info clearfix'>");
																out.println("<div class='fix'>");
																	out.println("<h4 class='post-title floatleft'>"+"<a href='#'>"+"dummy Product name"+"</a>"+
																	"</h4>");
																	out.println("<p class='floatright hidden-sm hidden-xs'>"+"Furniture"+"</p>");
																out.println("</div>");

															out.println("</div>");
														out.println("</div>");
														count++;
												}

												con.close();

											%>
											<div class="container">
												<div class="row">
													<div class="single-product col-lg-3">
														<div class="product-img">
															<span class="pro-label new-label">new</span>
															<a href="single-product.html"><img src="assets/images/dish/onigiri.jpg" alt="" /></a>
															<div class="product-action clearfix">
																<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
																<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
															</div>
														</div>
														<div class="product-info clearfix">
															<div class="fix">
																<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
																<p class="floatright hidden-sm hidden-xs">Furniture</p>
															</div>
															<div class="fix">
																<span class="pro-price floatleft">$ 56.20</span>
																<span class="pro-rating floatright">
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																</span>
															</div>
														</div>
													</div>
													
													<div class="single-product col-lg-3">
														<div class="product-img">
															<span class="pro-label sale-label">Sale</span>
															<a href="single-product.html"><img src="assets/images/dish/ramen.jpg" alt="" /></a>
															<div class="product-action clearfix">
																<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
																<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
															</div>
														</div>
														<div class="product-info clearfix">
															<div class="fix">
																<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
																<p class="floatright hidden-sm hidden-xs">Furniture</p>
															</div>
															<div class="fix">
																<span class="pro-price floatleft">$ 56.20</span>
																<span class="pro-rating floatright">
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																</span>
															</div>
														</div>
													</div>
													<div class="single-product col-lg-3">
														<div class="product-img">
															<span class="pro-label sale-label">Sale</span>
															<a href="single-product.html"><img src="assets/images/dish/ramen.jpg" alt="" /></a>
															<div class="product-action clearfix">
																<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
																<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
															</div>
														</div>
														<div class="product-info clearfix">
															<div class="fix">
																<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
																<p class="floatright hidden-sm hidden-xs">Furniture</p>
															</div>
															<div class="fix">
																<span class="pro-price floatleft">$ 56.20</span>
																<span class="pro-rating floatright">
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																</span>
															</div>
														</div>
													</div>
													
													<div class="single-product col-lg-3">
														<div class="product-img">
															<span class="pro-label new-label">new</span>
															<a href="single-product.html"><img src="assets/images/dish/onigiri.jpg" alt="" /></a>
															<div class="product-action clearfix">
																<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
																<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
															</div>
														</div>
														<div class="product-info clearfix">
															<div class="fix">
																<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
																<p class="floatright hidden-sm hidden-xs">Furniture</p>
															</div>
															<div class="fix">
																<span class="pro-price floatleft">$ 56.20</span>
																<span class="pro-rating floatright">
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																</span>
															</div>
														</div>
													</div>
													<div class="single-product col-lg-3">
														<div class="product-img">
															<span class="pro-label sale-label">Sale</span>
															<a href="single-product.html"><img src="assets/images/dish/ramen.jpg" alt="" /></a>
															<div class="product-action clearfix">
																<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
																<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
															</div>
														</div>
														<div class="product-info clearfix">
															<div class="fix">
																<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
																<p class="floatright hidden-sm hidden-xs">Furniture</p>
															</div>
															<div class="fix">
																<span class="pro-price floatleft">$ 56.20</span>
																<span class="pro-rating floatright">
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																</span>
															</div>
														</div>
													</div>
													<div class="single-product col-lg-3">
														<div class="product-img">
															<span class="pro-label sale-label">Sale</span>
															<a href="single-product.html"><img src="assets/images/dish/ramen.jpg" alt="" /></a>
															<div class="product-action clearfix">
																<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
																<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
															</div>
														</div>
														<div class="product-info clearfix">
															<div class="fix">
																<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
																<p class="floatright hidden-sm hidden-xs">Furniture</p>
															</div>
															<div class="fix">
																<span class="pro-price floatleft">$ 56.20</span>
																<span class="pro-rating floatright">
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																</span>
															</div>
														</div>
													</div>
													<div class="single-product col-lg-3">
														<div class="product-img">
															<span class="pro-label sale-label">Sale</span>
															<a href="single-product.html"><img src="assets/images/dish/ramen.jpg" alt="" /></a>
															<div class="product-action clearfix">
																<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
																<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
															</div>
														</div>
														<div class="product-info clearfix">
															<div class="fix">
																<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
																<p class="floatright hidden-sm hidden-xs">Furniture</p>
															</div>
															<div class="fix">
																<span class="pro-price floatleft">$ 56.20</span>
																<span class="pro-rating floatright">
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																</span>
															</div>
														</div>
													</div>
													<div class="single-product col-lg-3">
														<div class="product-img">
															<span class="pro-label sale-label">Sale</span>
															<a href="single-product.html"><img src="assets/images/dish/ramen.jpg" alt="" /></a>
															<div class="product-action clearfix">
																<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
																<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
															</div>
														</div>
														<div class="product-info clearfix">
															<div class="fix">
																<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
																<p class="floatright hidden-sm hidden-xs">Furniture</p>
															</div>
															<div class="fix">
																<span class="pro-price floatleft">$ 56.20</span>
																<span class="pro-rating floatright">
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																</span>
															</div>
														</div>
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
														<h2 class="title-border">西式甜點</h2>
													</div>
												</div>
											</div>
											<!-- Section-title end -->
											<div class="container">
												<div class="row">
													<div class="single-product col-lg-3">
														<div class="product-img">
															<span class="pro-label new-label">new</span>
															<a href="single-product.html"><img src="assets/images/dish/onigiri.jpg" alt="" /></a>
															<div class="product-action clearfix">
																<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
																<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
															</div>
														</div>
														<div class="product-info clearfix">
															<div class="fix">
																<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
																<p class="floatright hidden-sm hidden-xs">Furniture</p>
															</div>
															<div class="fix">
																<span class="pro-price floatleft">$ 56.20</span>
																<span class="pro-rating floatright">
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																</span>
															</div>
														</div>
													</div>
													
													<div class="single-product col-lg-3">
														<div class="product-img">
															<span class="pro-label sale-label">Sale</span>
															<a href="single-product.html"><img src="assets/images/dish/ramen.jpg" alt="" /></a>
															<div class="product-action clearfix">
																<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
																<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
															</div>
														</div>
														<div class="product-info clearfix">
															<div class="fix">
																<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
																<p class="floatright hidden-sm hidden-xs">Furniture</p>
															</div>
															<div class="fix">
																<span class="pro-price floatleft">$ 56.20</span>
																<span class="pro-rating floatright">
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																</span>
															</div>
														</div>
													</div>
													<div class="single-product col-lg-3">
														<div class="product-img">
															<span class="pro-label sale-label">Sale</span>
															<a href="single-product.html"><img src="assets/images/dish/ramen.jpg" alt="" /></a>
															<div class="product-action clearfix">
																<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
																<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
															</div>
														</div>
														<div class="product-info clearfix">
															<div class="fix">
																<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
																<p class="floatright hidden-sm hidden-xs">Furniture</p>
															</div>
															<div class="fix">
																<span class="pro-price floatleft">$ 56.20</span>
																<span class="pro-rating floatright">
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																</span>
															</div>
														</div>
													</div>
													<div class="single-product col-lg-3">
														<div class="product-img">
															<span class="pro-label new-label">new</span>
															<a href="single-product.html"><img src="assets/images/dish/onigiri.jpg" alt="" /></a>
															<div class="product-action clearfix">
																<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
																<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
															</div>
														</div>
														<div class="product-info clearfix">
															<div class="fix">
																<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
																<p class="floatright hidden-sm hidden-xs">Furniture</p>
															</div>
															<div class="fix">
																<span class="pro-price floatleft">$ 56.20</span>
																<span class="pro-rating floatright">
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																</span>
															</div>
														</div>
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
													<div class="single-product col-lg-3">
														<div class="product-img">
															<span class="pro-label new-label">new</span>
															<a href="single-product.html"><img src="assets/images/dish/onigiri.jpg" alt="" /></a>
															<div class="product-action clearfix">
																<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
																<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
															</div>
														</div>
														<div class="product-info clearfix">
															<div class="fix">
																<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
																<p class="floatright hidden-sm hidden-xs">Furniture</p>
															</div>
															<div class="fix">
																<span class="pro-price floatleft">$ 56.20</span>
																<span class="pro-rating floatright">
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																</span>
															</div>
														</div>
													</div>
													
													<div class="single-product col-lg-3">
														<div class="product-img">
															<span class="pro-label sale-label">Sale</span>
															<a href="single-product.html"><img src="assets/images/dish/ramen.jpg" alt="" /></a>
															<div class="product-action clearfix">
																<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
																<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
															</div>
														</div>
														<div class="product-info clearfix">
															<div class="fix">
																<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
																<p class="floatright hidden-sm hidden-xs">Furniture</p>
															</div>
															<div class="fix">
																<span class="pro-price floatleft">$ 56.20</span>
																<span class="pro-rating floatright">
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																</span>
															</div>
														</div>
													</div>
													<div class="single-product col-lg-3">
														<div class="product-img">
															<span class="pro-label sale-label">Sale</span>
															<a href="single-product.html"><img src="assets/images/dish/ramen.jpg" alt="" /></a>
															<div class="product-action clearfix">
																<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
																<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
															</div>
														</div>
														<div class="product-info clearfix">
															<div class="fix">
																<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
																<p class="floatright hidden-sm hidden-xs">Furniture</p>
															</div>
															<div class="fix">
																<span class="pro-price floatleft">$ 56.20</span>
																<span class="pro-rating floatright">
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																</span>
															</div>
														</div>
													</div>
													<div class="single-product col-lg-3">
														<div class="product-img">
															<span class="pro-label new-label">new</span>
															<a href="single-product.html"><img src="assets/images/dish/onigiri.jpg" alt="" /></a>
															<div class="product-action clearfix">
																<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="zmdi zmdi-favorite-outline"></i></a>
																<a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
															</div>
														</div>
														<div class="product-info clearfix">
															<div class="fix">
																<h4 class="post-title floatleft"><a href="#">dummy Product name</a></h4>
																<p class="floatright hidden-sm hidden-xs">Furniture</p>
															</div>
															<div class="fix">
																<span class="pro-price floatleft">$ 56.20</span>
																<span class="pro-rating floatright">
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																	<a href="#"><i class="zmdi zmdi-star-half"></i></a>
																</span>
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
				
				<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
				<script src="assets/js/bootstrap.min.js"></script>
			</body>
		</html>