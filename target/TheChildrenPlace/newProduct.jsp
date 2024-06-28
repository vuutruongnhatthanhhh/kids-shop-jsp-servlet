<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 22/10/2023
  Time: 6:00 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<html lang="zxx">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="Ogani Template">
  <meta name="keywords" content="Ogani, unica, creative, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Sản phẩm</title>

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

  <!-- Css Styles -->
  <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
  <link rel="stylesheet" href="css/nice-select.css" type="text/css">
  <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
  <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
  <link rel="stylesheet" href="css/style.css" type="text/css">
  <style>
    .hero__search__phone__icon {
      padding-top: 15px;
      font-size: 18px;
      color: #ffacac;
      height: 50px;
      width: 50px;
      background: #f5f5f5;
      line-height: 50px;
      text-align: center;
      border-radius: 50%;
      float: left;
      margin-right: 20px;
      /*padding-top: 14px;*/


    }
    .paginationn a {
      border: #ffacac 1px solid;
      padding: 5px 10px;
      color: white;
      text-decoration: none;
      background-color: #ffacac;
    }
  </style>
</head>

<body>


<%@include file="include/header.jsp"%>

<!-- Hero Section Begin -->
<section class="hero hero-normal">
  <div class="container">
    <div class="row">
      <div class="col-lg-3">
        <%@include file="include/menu.jsp"%>
      </div>
      <div class="col-lg-9">
        <%@include file="include/search.jsp"%>
      </div>
    </div>
  </div>
</section>
<!-- Hero Section End -->

<ul class="breadcrumb">
  <li><a href="">Trang chủ</a></li>
  <%--    <li><a href="/dung-cu/">  Giỏ hàng</a></li>--%>
  <li><span>  Cửa hàng</span></li>
</ul>

<!-- Product Section Begin -->
<section class="product spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-5">
        <div class="sidebar">




          <div class="sidebar__item">
            <div class="latest-product__text">
              <h4>Bán chạy</h4>
              <div class="latest-product__slider owl-carousel">
                <div class="latest-prdouct__slider__item">
                  <a href="#" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <img src="https://cdn1.concung.com/2022/03/56291-85271-large_mobile/sua-growplus-do-1-5kg-tu-1-tuoi.png" alt="">
                    </div>
                    <div class="latest-product__item__text">
                      <h6>Sữa GrowPlus+ Đỏ 1,5kg (từ 1 tuổi)</h6>
                      <span>575.000<sup>đ</sup> </span>
                    </div>
                  </a>
                  <a href="#" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <img src="https://cdn1.concung.com/2023/04/48750-trans.png" alt="">
                    </div>
                    <div class="latest-product__item__text">
                      <h6>Bỉm tã quần Moony bé trai size XL 38 miếng (12-22kg) (giao bao bì ngẫu nhiên)</h6>
                      <span>335.000<sup>đ</sup></span>
                    </div>
                  </a>
                  <a href="#" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <img src="https://cdn1.concung.com/2023/05/62439-trans.png" alt="">
                    </div>
                    <div class="latest-product__item__text">
                      <h6>Tã quần Huggies Skincare gói cực đại (L, 9-14kg, 68 miếng)</h6>
                      <span>335.000<sup>đ</sup></span>
                    </div>
                  </a>
                  <a href="#" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <img src="https://cdn1.concung.com/combo/2023/07/600x600-748-2023-03-59031-trans.png" alt="">
                    </div>
                    <div class="latest-product__item__text">
                      <h6>Máy xay đa năng cao cấp Animo 0.3L (SW-MG808)</h6>
                      <span>590.000<sup>đ</sup></span>
                    </div>
                  </a>
                </div>

                <div class="latest-prdouct__slider__item">
                  <a href="#" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <img src="https://cdn1.concung.com/2023/02/61719-trans.png" alt="">
                    </div>
                    <div class="latest-product__item__text">
                      <h6>Tã quần Nhật Bản Takato siêu mềm mại (L, 68 miếng)</h6>
                      <span>325.000<sup>đ</sup></span>
                    </div>
                  </a>
                  <a href="#" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <img src="https://cdn1.concung.com/2020/09/42532-65686-large_mobile/sua-tam-goi-toan-than-johnson-baby-500ml.png" alt="">
                    </div>
                    <div class="latest-product__item__text">
                      <h6>Sữa tắm gội toàn thân Johnson Baby 500ml</h6>
                      <span>124.000<sup>đ</sup></span>
                    </div>
                  </a>
                  <a href="#" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <img src="https://cdn1.concung.com/2023/10/52365-1696583967-trans.png" alt="">
                    </div>
                    <div class="latest-product__item__text">
                      <h6>Sữa Enfagrow A+ số 4 830g (2-6 tuổi) 2Flex</h6>
                      <span>485.000<sup>đ</sup></span>
                    </div>
                  </a>
                  <a href="#" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <img src="https://cdn1.concung.com/2021/10/26391-75896-large_mobile/dung-dich-giat-quan-ao-aga-ae-chai-3l.png" alt="">
                    </div>
                    <div class="latest-product__item__text">
                      <h6>Nước giặt Hàn quốc AGA - AE kháng khuẩn & bảo vệ da bé - Moonlight 3L</h6>
                      <span>193.500<sup>đ</sup></span>
                    </div>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-9 col-md-7">

        <div class="filter__item">
          <div class="row">
            <div class="col-lg-3 col-md-5">
              <div class="filter__sort">
                <%--                                <span>Bộ lọc</span>--%>
                <select>
                  <option value="0">Giá từ thấp - cao</option>
                  <option value="0">Giá từ cao - thấp</option>
                  <option value="0">Thứ tự A - Z</option>
                  <option value="0">Thứ tự Z - A</option>
                </select>
              </div>
            </div>


          </div>
        </div>

        <div class="row">
          <c:forEach var="product" items="${productsNew}">
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="product__item">
                <div class="product__item__pic set-bg" data-setbg="${product.getImageUrl()}">
                  <ul class="product__item__pic__hover">
                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                  </ul>
                </div>
                <div class="product__item__text">
                  <h6><a title="${product.name}" href="DetailProduct?id=${product.id}">${product.name}</a></h6>
                  <h5><fmt:formatNumber value="${product.price}" pattern="#,##0"/><sup>đ</sup>
                    <c:if test="${product.discount ne 0}">
                    <span class="discount">-${product.discount}%</span>
                    </c:if>
                </div>
              </div>
            </div>
          </c:forEach>



        </div>
        <%--                <div class="product__pagination">--%>
        <%--                    <a href="product1.jsp">1</a>--%>
        <%--                    <a href="product2.jsp">2</a>--%>
        <%--                    <a href="product3.jsp">3</a>--%>
        <%--                    <a href="product4.jsp">4</a>--%>
        <%--                    <a href="product5.jsp">5</a>--%>
        <%--                    <a href="product6.jsp">6</a>--%>
        <%--                    <a href="product7.jsp">7</a>--%>
        <%--                    <a href="product8.jsp">8</a>--%>
        <%--                    <a href="product9.jsp">9</a>--%>
        <%--                    <a href="product10.jsp">10</a>--%>
        <%--                    <a href="product11.jsp">11</a>--%>
        <%--                    <a href="product12.jsp">>></a>--%>
        <%--                </div>--%>
        <div class="paginationn">
          <c:if test="${currentPage > 1}">
            <a href="?categoryId=${categoryId}&page=${currentPage - 1}">Trang trước</a>
          </c:if>

          <c:forEach var="i" begin="1" end="${totalPages}">
            <c:choose>
              <c:when test="${i == currentPage}">
                <a style="color: black"> <b>${i}</b></a>
              </c:when>
              <c:otherwise>
                <a href="?categoryId=${categoryId}&page=${i}">${i}</a>
              </c:otherwise>
            </c:choose>
          </c:forEach>

          <c:if test="${currentPage < totalPages}">
            <a href="?categoryId${categoryId}&page=${currentPage + 1}">Trang tiếp</a>
          </c:if>
        </div>

      </div>
    </div>
  </div>
</section>
<!-- Product Section End -->

<!-- Footer Section Begin -->
<%@include file="include/footer.jsp"%>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>




</body>

</html>
