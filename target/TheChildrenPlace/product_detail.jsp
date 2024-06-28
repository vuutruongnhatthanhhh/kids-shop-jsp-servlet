<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

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
</head>

<body>




<!-- Header Section Begin -->
<%@include file="include/header.jsp"%>
<!-- Header Section End -->

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
  <c:forEach var="product" items="${product}">
  <li><a href="">Trang chủ</a></li>
      <li><a href="/dung-cu/">  Cửa hàng</a></li>
  <li><span>  ${product.name} </span></li>
</ul>


<!-- Product Details Section Begin -->
<section class="product-details spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-md-6" style="max-width: 40%; max-height: 40%">
        <div class="product__details__pic">
          <div class="product__details__pic__item">
            <img style="max-width: 90%" class="product__details__pic__item--large"
                 src="${product.getImageUrl()}" alt="">
          </div>

        </div>
      </div>
      <div class="col-lg-6 col-md-6">
        <div class="product__details__text">
          <h3 style="font-size: 25px">${product.name}</h3>
          <div class="product__details__rating">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star-half-o"></i>
            <span></span>
          </div>
          <div class="product__details__price"><fmt:formatNumber value="${product.price}" pattern="#,##0"/><sup>đ</sup></div>
          <p>${product.describe}


          </p>
          <div class="product__details__quantity">
            <div class="quantity">
              <div class="pro-qty">
                <input type="text" value="1">
              </div>
            </div>
          </div>
          <c:choose>
          <c:when test="${product.amount_shop eq 0}">
            <a href="" class="primary-btn">HẾT HÀNG</a>
          </c:when>
          <c:otherwise>
          <a href="AddToCart?id=${product.id}" class="primary-btn">THÊM VÀO GIỎ HÀNG</a>
          </c:otherwise>
          </c:choose>
          <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
          <ul>
            <li><b>Tình trạng</b> <span>Còn hàng</span></li>
            <li><b>Ship</b> <span>free ship trong bán kính 5km</span></li>
            <li><b>Đơn vị tính</b> <span></span></li>
            <li><b>Chia sẻ</b>
              <div class="share">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-instagram"></i></a>
                <a href="#"><i class="fa fa-pinterest"></i></a>
              </div>
            </li>
          </ul>
        </div>
      </div>
<%--      <div class="col-lg-12">--%>
<%--        <div class="product__details__tab">--%>
<%--          <ul class="nav nav-tabs" role="tablist">--%>
<%--&lt;%&ndash;            <li class="nav-item">&ndash;%&gt;--%>
<%--&lt;%&ndash;              <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"&ndash;%&gt;--%>
<%--&lt;%&ndash;                 aria-selected="true">Description</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <li class="nav-item">&ndash;%&gt;--%>
<%--&lt;%&ndash;              <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"&ndash;%&gt;--%>
<%--&lt;%&ndash;                 aria-selected="false">Information</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--            <li class="nav-item">--%>
<%--              <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"--%>
<%--                 aria-selected="false">Đánh giá <span>(1)</span></a>--%>
<%--            </li>--%>
<%--          </ul>--%>
<%--          <div class="tab-content">--%>
<%--            <div class="tab-pane " id="tabs-1" role="tabpanel">--%>
<%--              <div class="product__details__tab__desc">--%>
<%--                <h6>Products Infomation</h6>--%>
<%--                <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.--%>
<%--                  Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus--%>
<%--                  suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam sit amet quam--%>
<%--                  vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada.--%>
<%--                  Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat,--%>
<%--                  accumsan id imperdiet et, porttitor at sem. Praesent sapien massa, convallis a--%>
<%--                  pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula--%>
<%--                  elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus--%>
<%--                  et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam--%>
<%--                  vel, ullamcorper sit amet ligula. Proin eget tortor risus.</p>--%>
<%--                <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem--%>
<%--                  ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet--%>
<%--                  elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula sed magna dictum--%>
<%--                  porta. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus--%>
<%--                  nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.--%>
<%--                  Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed--%>
<%--                  porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum--%>
<%--                  sed sit amet dui. Proin eget tortor risus.</p>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--            <div class="tab-pane" id="tabs-2" role="tabpanel">--%>
<%--              <div class="product__details__tab__desc">--%>
<%--                <h6>Products Infomation</h6>--%>
<%--                <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.--%>
<%--                  Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus.--%>
<%--                  Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam--%>
<%--                  sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo--%>
<%--                  eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat.--%>
<%--                  Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Praesent--%>
<%--                  sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac--%>
<%--                  diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante--%>
<%--                  ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;--%>
<%--                  Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.--%>
<%--                  Proin eget tortor risus.</p>--%>
<%--                <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem--%>
<%--                  ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet--%>
<%--                  elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula sed magna dictum--%>
<%--                  porta. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus--%>
<%--                  nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--            <div class="tab-pane active" id="tabs-3" role="tabpanel">--%>
<%--              <div class="product__details__tab__desc">--%>
<%--                <h6>Đánh giá từ người dùng</h6>--%>
<%--                <p>Hỗ trợ tăng cân, tăng chiều cao cho trẻ--%>

<%--                  Bổ sung chất béo chuyển hóa nhanh MCT, Lysin,Sắt, Vitamin nhóm B cùng tỉ lệ Canxi: Phốt Pho hợp lý, Vitamin D3 và Kẽm.--%>



<%--                  Hoàn thiện và phát triển não bộ--%>

<%--                  GrowPLUS+ mới gia tăng hàm lượng DHA gấp 3 lần, kết hợp cùng Cholin, Taurin giúp trẻ tăng khả năng học hỏi, ghi nhớ.</p>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
    </div>
  </div>
</section>
</c:forEach>
<!-- Product Details Section End -->

<!-- Related Product Section Begin -->
<section class="related-product">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="section-title related__product__title">
          <h2>Sản phẩm liên quan</h2>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="product__item">
          <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/04/27526-trans.png">
            <ul class="product__item__pic__hover">
              <li><a href="#"><i class="fa fa-heart"></i></a></li>
              <li><a href="#"><i class="fa fa-retweet"></i></a></li>
              <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
            </ul>
          </div>
          <div class="product__item__text">
            <h6><a href="#">Sữa Wakodo KIDS 3 830g (từ 3 tuổi trở lên)</a></h6>
            <h5>99.000<sup><đ></đ></sup></h5>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="product__item">
          <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/09/60446-1694087118-trans.png">
            <ul class="product__item__pic__hover">
              <li><a href="#"><i class="fa fa-heart"></i></a></li>
              <li><a href="#"><i class="fa fa-retweet"></i></a></li>
              <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
            </ul>
          </div>
          <div class="product__item__text">
            <h6><a href="#">Sữa dê Bubs Goat số 4 Junior 800g (3-12 tuổi)</a></h6>
            <h5>300.000<sup>đ</sup></h5>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="product__item">
          <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/09/61773-1693999956-trans.png">
            <ul class="product__item__pic__hover">
              <li><a href="#"><i class="fa fa-heart"></i></a></li>
              <li><a href="#"><i class="fa fa-retweet"></i></a></li>
              <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
            </ul>
          </div>
          <div class="product__item__text">
            <h6><a href="#">Sữa Bubs Supreme Junior Nutrition 800g (3-12 tuổi)</a></h6>
            <h5>400.000<sup>đ</sup></h5>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="product__item">
          <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/04/31078-trans.png">
            <ul class="product__item__pic__hover">
              <li><a href="#"><i class="fa fa-heart"></i></a></li>
              <li><a href="#"><i class="fa fa-retweet"></i></a></li>
              <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
            </ul>
          </div>
          <div class="product__item__text">
            <h6><a href="#">Sữa Wakodo MOM 830g</a></h6>
            <h5>465.000<sup>đ</sup></h5>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Related Product Section End -->

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