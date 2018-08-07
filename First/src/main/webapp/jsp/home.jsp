﻿<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- all css here -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/chosen.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/ionicons.min.css">
<link rel="stylesheet" href="assets/css/meanmenu.min.css">
<link rel="stylesheet" href="assets/css/bundle.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>

<script type="text/javascript">
function logout() {
	var xhr=new XMLHttpRequest();//创建AJAX操作对象（get,post）
   	xhr.open("POST", "/logout", false);
	xhr.setRequestHeader("cache-control", "no-cache");
	xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	xhr.send("uname="+document.getElementById("uname").value);
	var result=xhr.status;//获取AJAX请求的执行结果(Http的错误编号)
	if(result==200){
   	    alert(xhr.responseText);
    }else{
        alert(result);
   }
} 

$(function () {
	alert("页面已加载！!!!!!");
	$.ajax({
        url:"/load",
        success:function(){
        	alert(asd)
        },
    });
});


function load()
{
alert("页面已加载！");
$.ajax({
    url:"/load",
    success:function(){
    	alert(asd)
    },
	});
}
</script>

</head>
<body onload="load()">
<div class="wrapper">
	<!-- header start -->
	<header>
		<div class="header-area transparent-bar">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-md-2 col-sm-5 col-5">
						<div class="language-currency">
							<div class="language">
								<select class="select-header orderby">
									<option value="">ENGLISH</option>
									<option value="">BANGLA </option>
									<option value="">HINDI</option>
								</select>
							</div>
							<div class="currency">
								<select class="select-header orderby">
									<option value="">USD</option>
									<option value="">US </option>
									<option value="">EURO</option>
								</select>
							</div>
						</div>
						<div class="sticky-logo">
							<a href="index.html"><img src="assets/img/logo/2.png" alt="" /></a>
						</div>
						<div class="logo-small-device">
							<a href="index.html"><img alt="" src="assets/img/logo/logo.png"></a>
						</div>
					</div>
					<div class="col-lg-8 col-md-8 d-none d-md-block">
						<div class="logo-menu-wrapper text-center">
							<div class="logo">
								<a href="index.html"><img src="assets/img/logo/logo.png" alt="" /></a>
							</div>
							<div class="main-menu">
								<nav>
									<ul>
										<li><a href="home.jsp">Home</a></li>
										<li><a href="about-us.jsp">About US</a></li>
										<li><a href="contact.jsp">Contact US</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
					<div class="col-lg-2 col-md-2 col-sm-7 col-7">
						<div class="header-site-icon">
							<div class="header-search same-style">
								<button class="sidebar-trigger-search">
									<span class="ti-search"></span>
								</button>
							</div>
							<div class="header-login same-style">
								<a href="personal.jsp">
									<span class="ti-user"> <%=session.getAttribute("user") %> </span>
								</a>
							</div>
							<div class="header-cart same-style">
								<button class="sidebar-trigger">
									<i class="ti-shopping-cart"></i>
									<span class="count-style">03</span>
								</button>
							</div>
							<div class="same-style">
								<button onclick="logout()" >
								<span>注销</span>
								</button>
							</div>
						</div>
					</div>
					<div class="mobile-menu-area col-12">
						<div class="mobile-menu">
							<nav id="mobile-menu-active">
								<ul class="menu-overflow">
									<li><a href="#">HOME</a>
										<ul>
											<li><a href="index.html">home version 1</a></li>
											<li><a href="index-2.html">home version 2</a></li>
											<li><a href="index-3.html">home version 3</a></li>
											<li><a href="index-4.html">home version 4</a></li>
										</ul>
									</li>
									<li><a href="#">pages</a>
										<ul>
											<li><a href="about-us.html">about us</a></li>
											<li><a href="cart.html">cart page</a></li>
											<li><a href="checkout.html">checkout</a></li>
											<li><a href="wishlist.html">wishlist</a></li>
											<li><a href="login-register.html">login</a></li>
											<li><a href="contact.html">contact</a></li>
										</ul>
									</li>
									<li><a href="#">shop</a>
										<ul>
											<li><a href="#">shop grid</a>
												<ul>
													<li><a href="shop-grid-2-col.html"> grid 2 column</a></li>
													<li><a href="shop-grid-3-col.html"> grid 3 column</a></li>
													<li><a href="shop.html"> grid 4 column</a></li>
													<li><a href="shop-grid-6-col.html"> grid 6 column</a></li>
													<li><a href="shop-grid-box.html"> grid box style</a></li>
												</ul>
											</li>
											<li><a href="#">shop list</a>
												<ul>
													<li><a href="shop-list.html"> list 1 column</a></li>
													<li><a href="shop-list-2-col.html"> list 2 column</a></li>
													<li><a href="shop-list-3-col.html"> list 3 column</a></li>
													<li><a href="shop-list-box.html"> list box style</a></li>
												</ul>
											</li>
											<li><a href="shop-grid-view-5-col.html">product details</a>
												<ul>
													<li><a href="product-details.html">tab style</a></li>
													<li><a href="product-details-sticky.html">sticky style</a></li>
													<li><a href="product-details-gallery.html">gallery style</a></li>
													<li><a href="product-details-fixed-img.html">fixed image style</a></li>
												</ul>
											</li>
										</ul>
									</li>
									<li><a href="#">BLOG</a>
										<ul>
											<li><a href="blog-masonry.html">Blog Masonry</a></li>
											<li><a href="#">Blog Standard</a>
												<ul>
													<li><a href="blog-left-sidebar.html">left sidebar</a></li>
													<li><a href="blog-right-sidebar.html">right sidebar</a></li>
													<li><a href="blog-no-sidebar.html">no sidebar</a></li>
												</ul>
											</li>
											<li><a href="#">Post Types</a>
												<ul>
													<li><a href="blog-details-standerd.html">Standard post</a></li>
													<li><a href="blog-details-audio.html">audio post</a></li>
													<li><a href="blog-details-video.html">video post</a></li>
													<li><a href="blog-details-gallery.html">gallery post</a></li>
													<li><a href="blog-details-link.html">link post</a></li>
													<li><a href="blog-details-quote.html">quote post</a></li>
												</ul>
											</li>
										</ul>
									</li>
									<li><a href="contact.html"> Contact us</a></li>
								</ul>
							</nav>							
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- sidebar-cart start -->
	<div class="sidebar-cart onepage-sidebar-area">
		<div class="wrap-sidebar">
			<div class="sidebar-cart-all">
				<div class="sidebar-cart-icon">
					<button class="op-sidebar-close"><span class="ti-close"></span></button>
				</div>
				<div class="cart-content">
					<h3>Shopping Cart</h3>
					<ul>
						<li class="single-product-cart">
							<div class="cart-img">
								<a href="#"><img src="assets/img/cart/1.jpg" alt=""></a>
							</div>
							<div class="cart-title">
								<h3><a href="#"> Trucker Chair</a></h3>
								<span>1 x $140.00</span>
							</div>
							<div class="cart-delete">
								<a href="#"><i class="ti-trash"></i></a>
							</div>
						</li>
						<li class="single-product-cart">
							<div class="cart-img">
								<a href="#"><img src="assets/img/cart/2.jpg" alt=""></a>
							</div>
							<div class="cart-title">
								<h3><a href="#"> Reclining Sofa</a></h3>
								<span>1 x $140.00</span>
							</div>
							<div class="cart-delete">
								<a href="#"><i class="ti-trash"></i></a>
							</div>
						</li>
						<li class="single-product-cart">
							<div class="cart-img">
								<a href="#"><img src="assets/img/cart/3.jpg" alt=""></a>
							</div>
							<div class="cart-title">
								<h3><a href="#">Handmade Pot</a></h3>
								<span>1 x $140.00</span>
							</div>
							<div class="cart-delete">
								<a href="#"><i class="ti-trash"></i></a>
							</div>
						</li>
						<li class="single-product-cart">
							<div class="cart-total">
								<h4>Total : <span>$ 120</span></h4>
							</div>
						</li>
					</ul>
					<div class="cart-checkout-btn">
						<a class="cr-btn btn-style cart-btn-style" href="#"><span>view cart</span></a>
						<a class="no-mrg cr-btn btn-style cart-btn-style" href="#"><span>checkout</span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- main-search start -->
	<div class="main-search-active">
		<div class="sidebar-search-icon">
			<button class="search-close"><span class="ti-close"></span></button>
		</div>
		<div class="sidebar-search-input">
			<form>
				<div class="form-search">
					<input id="search" class="input-text" value="" placeholder="Search Entire Store" type="search">
					<button>
						<i class="ti-search"></i>
					</button>
				</div>
			</form>
		</div>
	</div>
	<div class="slider-area">
		<div class="slider-active owl-carousel">
			<div class="single-slider slider-1 gray-bg">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<div class="slider-content slider-animated-1">
								<h2 class="animated">Sale off <span>30%</span> for all </h2>
								<p class="animated">Lorem ipsum dolor sit amet consectetur adipisici elit, sed do eius tempor incididunt ut labore et dolore magna.</p>
								<a class="slider-btn animated" href="shop.html">shop now</a>
							</div>
						</div>
						<div class="col-md-6">
							<div class="slider-single-img slider-animated-1">
								<img class="animated" src="assets/img/slider/1.png" alt="slider images">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="single-slider slider-1 gray-bg">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<div class="slider-content slider-animated-2">
								<h2 class="animated">Sale off <span>30%</span> for all </h2>
								<p class="animated">Lorem ipsum dolor sit amet consectetur adipisici elit, sed do eius tempor incididunt ut labore et dolore magna.</p>
								<a class="slider-btn animated" href="shop.html">shop now</a>
							</div>
						</div>
						<div class="col-md-6">
							<div class="slider-single-img slider-animated-2">
								<img class="animated" src="assets/img/slider/4.png" alt="slider images">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="banner-area hm1-banner pt-130 pb-107">
	
	<div id="flushDIV">
        <table border="1" cellpadding="10" cellspacing="0">
            <tr>
                <th>产品编号</th>
                <th>产品名称</th>
                <th>单价</th>
            </tr>
            <c:forEach items="${productLists}" var="product">
                <tr>
                    <td>${product.productId}</td>
                    <td>${product.productName}</td>
                    <td>${product.productPrice}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
	
	
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-4">
					<div class="banner-wrapper banner-border ml-10 mb-30">
						<div class="banner-img">
							<a href="#"><img src="assets/img/banner/1.jpg" alt="image"></a>
						</div>
						<div class="banner-content-style1 banner-position-center-right">
							<h2>30% <span><img src="assets/img/icon-img/discount.png" alt="image"></span> <br>Products</h2>
						</div>
					</div>
					<div class="banner-wrapper banner-border ml-10 mb-30">
						<div class="banner-img">
							<a href="#"><img src="assets/img/banner/2.jpg" alt="image"></a>
						</div>
						<div class="banner-content-style2 banner-position-center-left">
							<h3>Don’t Miss</h3>
							<h2>Rattan <span>Bag.</span></h2>
						</div>
					</div>
				</div>
				<div class="col-md-12 col-lg-4">
					<div class="banner-wrapper mrg-mb-md">
						<div class="banner-img">
							<a href="#"><img src="assets/img/banner/3.jpg" alt="image"></a>
						</div>
						<div class="banner-content-style3 banner-position-top">
							<h3>Black Friday Offer</h3>
						</div>
						<div class="banner-content-style4 banner-position-bottom">
							<h3>20% Off</h3>
						</div>
					</div>
				</div>
				<div class="col-md-12 col-lg-4">
					<div class="banner-wrapper banner-border-2 mr-10 mb-30">
						<div class="banner-img">
							<a href="#"><img src="assets/img/banner/4.jpg" alt="image"></a>
						</div>
						<div class="banner-content-style2 banner-position-center-left">
							<h3>Don’t Miss</h3>
							<h2>Rattan <span>Lamp.</span></h2>
						</div>
					</div>
					<div class="banner-wrapper banner-border-2 mr-10 mb-30">
						<div class="banner-img">
							<a href="#"><img src="assets/img/banner/5.jpg" alt="image"></a>
						</div>
						<div class="banner-content-style1 banner-position-center-right">
							<h2>30% <span> <img src="assets/img/icon-img/discount.png" alt="image"></span> <br>Products</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="product-area pb-80">
		<div class="container">
			<div class="section-title text-center mb-20">
				<h2>Our Collection</h2>
			</div>
			<div class="product-tab-list text-center mb-60 nav product-menu-mrg" role="tablist">
				<a class="active" href="#home1" data-toggle="tab" role="tab" aria-selected="true" aria-controls="home1">
					<h4>Featured </h4>
				</a>
				<a href="#home2" data-toggle="tab" role="tab" aria-selected="false" aria-controls="home2">
					<h4> Latest </h4>
				</a>
				<a href="#home3" data-toggle="tab" role="tab" aria-selected="false" aria-controls="home3">
					<h4>Best Seller</h4>
				</a>
			</div>
			<div class="tab-content">
				<div class="tab-pane active" id="home1" role="tabpanel">
					<div class="row">
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/1.jpg" alt="">
									</a>
									<span>30% off</span>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Tissue Holder</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span class="old">$22.00 </span>
										<span>$19.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/2.jpg" alt="">
									</a>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Chair</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span>$25.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/3.jpg" alt="">
									</a>
									<span>new</span>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Dustbin</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span class="old">$33.00 </span>
										<span>$27.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/4.jpg" alt="">
									</a>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Cat Chair</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span>$50.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/5.jpg" alt="">
									</a>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Tissue Holder</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span class="old">$22.00 </span>
										<span>$19.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/6.jpg" alt="">
									</a>
									<span>hot</span>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Chair</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span>$90.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/7.jpg" alt="">
									</a>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Product</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span>$75.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/8.jpg" alt="">
									</a>
									<span>50% off</span>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Bag</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span class="old">$22.00 </span>
										<span>$19.00</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="home2" role="tabpanel">
					<div class="row">
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/8.jpg" alt="">
									</a>
									<span>30% off</span>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Tissue Holder</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span class="old">$22.00 </span>
										<span>$19.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/7.jpg" alt="">
									</a>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Chair</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span>$25.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/6.jpg" alt="">
									</a>
									<span>new</span>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Dustbin</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span class="old">$33.00 </span>
										<span>$27.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/5.jpg" alt="">
									</a>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Cat Chair</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span>$50.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/4.jpg" alt="">
									</a>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Tissue Holder</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span class="old">$22.00 </span>
										<span>$19.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/3.jpg" alt="">
									</a>
									<span>hot</span>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Chair</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span>$90.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/2.jpg" alt="">
									</a>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Product</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span>$75.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/1.jpg" alt="">
									</a>
									<span>50% off</span>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Bag</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span class="old">$22.00 </span>
										<span>$19.00</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="home3" role="tabpanel">
					<div class="row">
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/4.jpg" alt="">
									</a>
									<span>30% off</span>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Tissue Holder</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span class="old">$22.00 </span>
										<span>$19.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/3.jpg" alt="">
									</a>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Chair</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span>$25.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/2.jpg" alt="">
									</a>
									<span>new</span>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Dustbin</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span class="old">$33.00 </span>
										<span>$27.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/1.jpg" alt="">
									</a>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Cat Chair</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span>$50.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/8.jpg" alt="">
									</a>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Tissue Holder</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span class="old">$22.00 </span>
										<span>$19.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/7.jpg" alt="">
									</a>
									<span>hot</span>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Chair</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span>$90.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/6.jpg" alt="">
									</a>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Product</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span>$75.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/5.jpg" alt="">
									</a>
									<span>50% off</span>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Bag</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span class="old">$22.00 </span>
										<span>$19.00</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="banner-area pb-95">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6">
					<div class="banner-wrapper overflow mb-30">
						<div class="banner-img">
							<a href="#">
								<img alt="image" src="assets/img/banner/6.jpg">
							</a>
						</div>
						<div class="banner-content-5">
							<h4>New Arrivals</h4>
							<h2>Rattan Sofa</h2>
							<h3>Sale up to 30% off all</h3>
							<a href="#" class="banner-btn">View Collection</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="banner-wrapper overflow mb-30">
						<div class="banner-img">
							<a href="#">
								<img alt="image" src="assets/img/banner/7.jpg">
							</a>
						</div>
						<div class="banner-content-5">
							<h4>Best Products</h4>
							<h2>Rattan Accessories</h2>
							<h3>Sale up to 40% off all</h3>
							<a href="#" class="banner-btn">View Collection</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="new-collection-area pb-90">
		<div class="container">
			<div class="section-title text-center mb-55">
				<h2>New Collection</h2>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="new-collection-slider owl-carousel mb-30">
						<div class="single-new-collection">
							<a href="shop.html"><img alt="image" src="assets/img/product/9.jpg"></a>
							<div class="new-collection-content slider-animated-3">
								<h2 class="animated">Black Friday Offer</h2>
								<a href="#" class="btn-style cr-btn animated"><span>shop now</span></a>
							</div>
						</div>
						<div class="single-new-collection">
							<a href="shop.html"><img alt="image" src="assets/img/product/10.jpg"></a>
							<div class="new-collection-content slider-animated-4">
								<h2 class="animated">Black Friday Offer</h2>
								<a href="#" class="btn-style cr-btn animated"><span>shop now</span></a>
							</div>
						</div>
						<div class="single-new-collection">
							<a href="shop.html"><img alt="image" src="assets/img/product/11.jpg"></a>
							<div class="new-collection-content slider-animated-3">
								<h2 class="animated">Black Friday Offer</h2>
								<a href="#" class="btn-style cr-btn animated"><span>shop now</span></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="row">
						<div class="col-lg-6 col-md-6">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/3.jpg" alt="">
									</a>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Tissue Holder</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
									</div>
									<div class="product-price">
										<span>$20.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-md-6">
							<div class="product-wrapper mb-45">
								<div class="product-img">
									<a href="#">
										<img src="assets/img/product/4.jpg" alt="">
									</a>
									<div class="product-action">
										<div class="product-action-style">
											<a class="action-plus" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
												<i class="ti-plus"></i>
											</a>
											<a class="action-heart" title="Wishlist" href="#">
												<i class="ti-heart"></i>
											</a>
											<a class="action-cart" title="Add To Cart" href="#">
												<i class="ti-shopping-cart"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content text-center">
									<h4><a href="product-details.html">Rattan Cat Chair</a></h4>
									<div class="product-rating">
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star"></i>
										<i class="ion-ios-star-outline"></i>
									</div>
									<div class="product-price">
										<span>$25.00</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="dealy-of-product-area gray-bg dealy-mrg">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-12">
					<div class="dealy-product-img wow fadeInLeft">
						<img src="assets/img/banner/1.png" alt="image">
					</div>
				</div>
				<div class="col-lg-6 col-md-12 dealy-product-content-center">
					<div class="dealy-product-content">
						<h3><a href="#">Rattan Rocking Cradle</a></h3>
						<div class="dealy-rating">
							<i class="ion-ios-star"></i>
							<i class="ion-ios-star"></i>
							<i class="ion-ios-star"></i>
							<i class="ion-ios-star"></i>
							<i class="ion-ios-star"></i>
						</div>
						<div class="dealy-price">
							<span class="old">$20.00</span>
							<span>$15.00</span>
						</div>
						<div class="timer">
							<div data-countdown="2018/06/01"></div>
						</div>
						<a href="#" class="btn-style cr-btn"><span>shop now</span></a>
					</div>
				</div>
				<div class="col-lg-3 col-md-12">
					<div class="dealy-product-img wow fadeInRight f-right">
						<img src="assets/img/banner/2.png" alt="image">
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="blog-area pt-125 pb-85 blog-padding hm-blog">
		<div class="container-fluid">
			<div class="section-title text-center mb-60">
				<h2>Latest Blog</h2>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="blog-hm-wrapper mb-40">
						<div class="blog-img">
							<a href="blog-details-standerd.html"><img src="assets/img/blog/1.jpg" alt="image"></a>
						</div>
						<div class="blog-hm-content">
							<h3><a href="blog-details-standerd.html">Lorem ipsum dolor sit amet consectetu to adipisicing elit sed do eius</a></h3>
							<div class="blog-meta">
								<ul>
									<li><span>by:</span><a href="#">Admin</a></li>
									<li><span>On</span> 14 Oct, 2018</li>
								</ul>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetl adipisicing elit, sed do eiusmod tempor incididul ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="blog-hm-wrapper mb-40">
						<div class="blog-img">
							<a href="blog-details-standerd.html"><img src="assets/img/blog/2.jpg" alt="image"></a>
						</div>
						<div class="blog-hm-content">
							<h3><a href="blog-details-standerd.html">Lorem ipsum dolor sit amet consectetu to adipisicing elit sed do eius</a></h3>
							<div class="blog-meta">
								<ul>
									<li><span>by:</span><a href="#">Admin</a></li>
									<li><span>On</span> 14 Oct, 2018</li>
								</ul>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetl adipisicing elit, sed do eiusmod tempor incididul ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="blog-hm-wrapper mb-40">
						<div class="blog-img">
							<a href="blog-details-standerd.html"><img src="assets/img/blog/3.jpg" alt="image"></a>
						</div>
						<div class="blog-hm-content">
							<h3><a href="blog-details-standerd.html">Lorem ipsum dolor sit amet consectetu to adipisicing elit sed do eius</a></h3>
							<div class="blog-meta">
								<ul>
									<li><span>by:</span><a href="#">Admin</a></li>
									<li><span>On</span> 14 Oct, 2018</li>
								</ul>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetl adipisicing elit, sed do eiusmod tempor incididul ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="gray-bg footer-padding">
		<div class="container-fluid">
			<div class="footer-top pt-85 pb-25">
				<div class="row">
					<div class="col-lg-3 col-md-5">
						<div class="footer-widget mb-30">
							<div class="footer-widget-title">
								<h3>Get in Touch</h3>
							</div>
							<div class="food-info-wrapper">
								<div class="food-address">
									<div class="food-info-icon">
										<i class="ion-ios-home-outline"></i>
									</div>
									<div class="food-info-content">
										<p>2020 Willshire Glen, Out of <br>Alpharetta, GA-30009</p>
									</div>
								</div>
								<div class="food-address">
									<div class="food-info-icon">
										<i class="ion-ios-telephone-outline"></i>
									</div>
									<div class="food-info-content">
										<p>(+00) 121 025 0214 </p>
									</div>
								</div>
								<div class="food-address">
									<div class="food-info-icon">
										<i class="ion-ios-email-outline"></i>
									</div>
									<div class="food-info-content">
										<p><a href="#">info@example.com</a></p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-2 col-md-4">
						<div class="footer-widget mb-30">
							<div class="footer-widget-title">
								<h3>Information</h3>
							</div>
							<div class="food-widget-content">
								<ul class="quick-link">
									<li><a href="#">Delivery</a></li>
									<li><a href="#">Legal Notice</a></li>
									<li><a href="#">Terms & Conditions</a></li>
									<li><a href="about-us.html">About Us</a></li>
									<li><a href="#">Secure Payment</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-2 col-md-3">
						<div class="footer-widget mb-30">
							<div class="footer-widget-title">
								<h3>accounts</h3>
							</div>
							<div class="food-widget-content">
								<ul class="quick-link">
									<li><a href="login-register.html">Sign In</a></li>
									<li><a href="cart.html">View Cart</a></li>
									<li><a href="wishlist.html">My Wishlist</a></li>
									<li><a href="#">Track My Order</a></li>
									<li><a href="#">Help</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-2 col-md-6">
						<div class="footer-widget mb-30">
							<div class="footer-widget-title">
								<h3>support</h3>
							</div>
							<div class="food-widget-content">
								<ul class="quick-link">
									<li><a href="contact.html">Hello & Contact</a></li>
									<li><a href="#">Shipping & Tax</a></li>
									<li><a href="#">Return Policy</a></li>
									<li><a href="#">Affiliates</a></li>
									<li><a href="#">Legal Notice</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="footer-widget mb-30">
							<div class="footer-widget-title">
								<h3>twitter feed</h3>
							</div>
							<div class="twitter-info-wrapper">
								<div class="single-twitter">
									<div class="twitter-icon">
										<i class="ion-social-twitter-outline"></i>
									</div>
									<div class="twitter-content">
										<p>A modern <a href="#">#Shopify theme </a> <a class="link1" href="#">@devitems</a> <a class="link2" href="#">http://sc.chinaz.com</a></p>
									</div>
								</div>
								<div class="single-twitter">
									<div class="twitter-icon">
										<i class="ion-social-twitter-outline"></i>
									</div>
									<div class="twitter-content">
										<p>A modern <a href="#">#Shopify theme </a> <a class="link1" href="#">@devitems</a> <a class="link2" href="#">http://sc.chinaz.com</a></p>
									</div>
								</div>
								<div class="single-twitter">
									<div class="twitter-icon">
										<i class="ion-social-twitter-outline"></i>
									</div>
									<div class="twitter-content">
										<p>A modern <a href="#">#Shopify theme </a> <a class="link1" href="#">@devitems</a> <a class="link2" href="#">http://sc.chinaz.com</a></p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom border-top-1 ptb-15">
				<div class="row">
					<div class="col-md-6 col-12">
						<div class="copyright-payment">
							<div class="copyright">
								<p>Copyright &copy; 2018.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-12">
						<div class="footer-payment-method">
							<a href="#"><img alt="" src="assets/img/icon-img/7.png"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span class="ion-android-close" aria-hidden="true"></span>
		</button>
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<div class="qwick-view-left">
						<div class="quick-view-learg-img">
							<div class="quick-view-tab-content tab-content">
								<div class="tab-pane active show fade" id="modal1" role="tabpanel">
									<img src="assets/img/quick-view/l1.jpg" alt="">
								</div>
								<div class="tab-pane fade" id="modal2" role="tabpanel">
									<img src="assets/img/quick-view/l2.jpg" alt="">
								</div>
								<div class="tab-pane fade" id="modal3" role="tabpanel">
									<img src="assets/img/quick-view/l3.jpg" alt="">
								</div>
							</div>
						</div>
						<div class="quick-view-list nav" role="tablist">
							<a class="active" href="#modal1" data-toggle="tab" role="tab" aria-selected="true" aria-controls="home1">
								<img src="assets/img/quick-view/s1.jpg" alt="">
							</a>
							<a href="#modal2" data-toggle="tab" role="tab" aria-selected="false" aria-controls="home2">
								<img src="assets/img/quick-view/s2.jpg" alt="">
							</a>
							<a href="#modal3" data-toggle="tab" role="tab" aria-selected="false" aria-controls="home3">
								<img src="assets/img/quick-view/s3.jpg" alt="">
							</a>
						</div>
					</div>
					<div class="qwick-view-right">
						<div class="qwick-view-content">
							<h3>Handcrafted Supper Mug</h3>
							<div class="price">
								<span class="new">$90.00</span>
								<span class="old">$120.00  </span>
							</div>
							<div class="rating-number">
								<div class="quick-view-rating">
									<i class="ion-ios-star red-star"></i>
									<i class="ion-ios-star red-star"></i>
									<i class="ion-ios-star red-star"></i>
									<i class="ion-ios-star red-star"></i>
									<i class="ion-ios-star red-star"></i>
								</div>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do tempor incididun ut labore et dolore magna aliqua. Ut enim ad mi , quis nostrud veniam exercitation .</p>
							<div class="quick-view-select">
								<div class="select-option-part">
									<label>Size*</label>
									<select class="select">
										<option value="">- Please Select -</option>
										<option value="">900</option>
										<option value="">700</option>
									</select>
								</div>
								<div class="select-option-part">
									<label>Color*</label>
									<select class="select">
										<option value="">- Please Select -</option>
										<option value="">orange</option>
										<option value="">pink</option>
										<option value="">yellow</option>
									</select>
								</div>
							</div>
							<div class="quickview-plus-minus">
								<div class="cart-plus-minus">
									<input type="text" value="02" name="qtybutton" class="cart-plus-minus-box">
								</div>
								<div class="quickview-btn-cart">
									<a class="btn-style cr-btn" href="#"><span>add to cart</span></a>
								</div>
								<div class="quickview-btn-wishlist">
									<a class="btn-hover cr-btn" href="#"><span><i class="ion-ios-heart-outline"></i></span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- all js here -->
<script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
<script src="assets/js/popper.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/isotope.pkgd.min.js"></script>
<script src="assets/js/imagesloaded.pkgd.min.js"></script>
<script src="assets/js/jquery.counterup.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/ajax-mail.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/plugins.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
