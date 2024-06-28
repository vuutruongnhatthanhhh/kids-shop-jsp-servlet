<%@ page import="Model.Cart" %><%--

  Created by IntelliJ IDEA.
  User: HP
  Date: 22/10/2023
  Time: 4:19 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Page Preloder -->
<%--<div id="preloder">--%>
<%--    <div class="loader"></div>--%>
<%--</div>--%>

<!-- Humberger Begin -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="#"><img src="img/logo.png" alt=""></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>
            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
        </ul>
        <div class="header__cart__price">item: <span>$150.00</span></div>
    </div>
    <div class="humberger__menu__widget">
        <div class="header__top__right__language">
            <img src="img/language.png" alt="">
            <div>English</div>
            <span class="arrow_carrot-down"></span>
            <ul>
                <li><a href="#">Spanis</a></li>
                <li><a href="#">English</a></li>
            </ul>
        </div>
        <div class="header__top__right__auth">
            <a href="register.jsp"><i class="fa fa-user"></i> Đăng nhập</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="./index.html">Trang chủ</a></li>
            <li><a href="./shop-grid.html">Shop</a></li>
            <li><a href="#">Pages</a>
                <ul class="header__menu__dropdown">
                    <li><a href="./shop-details.html">Shop Details</a></li>
                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                    <li><a href="./checkout.html">Check Out</a></li>
                    <li><a href="./blog-details.html">Blog Details</a></li>
                </ul>
            </li>
            <li><a href="./blog.html">Blog</a></li>
            <li><a href="./contact.html">Contact</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="header__top__right__social">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-linkedin"></i></a>
        <a href="#"><i class="fa fa-pinterest-p"></i></a>
    </div>
    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> lpn@gmail.com</li>
            <li>Free Shipping for all Order of $99</li>
        </ul>
    </div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i> lpn@gmail.com</li>
                            <li>Free ship cho đơn trên 300k</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <!-- <div class="header__top__right__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        </div> -->
                        <div class="header__top__right__language">
                            <img src="img/language_vietnam.png" alt="">
                            <div>Tiếng Việt</div>
                            <span class="arrow_carrot-down"></span>
                            <ul>
                                <li><a href="#">Tiếng Anh</a></li>
                                <li><a href="#">Tiếng Việt</a></li>
                            </ul>
                        </div>
                        <div class="header__top__right__auth">
                            <%-- Kiểm tra xem người dùng đã đăng nhập hay chưa --%>
                            <% if (session.getAttribute("name") == null) { %>
                            <a href="login.jsp"><i class="fa fa-user"></i> Đăng nhập</a>
                            <% } else { %>
                            <a href="UserInfo"><i class="fa fa-user"></i> <%= session.getAttribute("name") %></a>
                                <div class="header__top__right__auth">
                                    <a href="LogoutServlet"><i></i> Đăng xuất</a>
                                </div>
                                <% } %>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="Home"><img src="img/logo_lpn.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li class="active"><a href="Home">Trang chủ</a></li>
                        <li><a href="Product">Cửa hàng</a></li>
                        <!-- <li><a href="#">Pages</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="./shop-details.html">Shop Details</a></li>
                                <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                <li><a href="./checkout.html">Check Out</a></li>
                                <li><a href="./blog-details.html">Blog Details</a></li>
                            </ul>
                        </li> -->
                        <li><a href="blog.jsp">Tin tức</a></li>
                        <li><a href="contact.jsp">Liên hệ</a></li>
                    </ul>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>

<%--                        <li><a href="product_favourite.jsp"><i class="fa fa-heart"></i> <span>1</span></a></li>--%>
                        <%

                            if (request.getSession().getAttribute("cart") == null) {
                                request.getSession().setAttribute("cart", new Cart());
                            }

                        %>
                                              <li><a href="CartShow"><i class="fa fa-shopping-bag"></i> <span>${sessionScope.cart.getTotalQuantity()}</span></a></li>

                    </ul>
<%--                    <div class="header__cart__price">Tổng: <span>450.000<sup>đ</sup></span></div>--%>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<!-- Header Section End -->
