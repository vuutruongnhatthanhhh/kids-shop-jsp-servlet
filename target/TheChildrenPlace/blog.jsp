<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="Ogani Template">
  <meta name="keywords" content="Ogani, unica, creative, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Tin Tức</title>

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
    .long-content {
      max-width: 473px;
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
    }

    .long-title {
      max-width: 364px; /* Điều chỉnh giới hạn kích thước tùy ý */
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
      display: inline-block;
    }

    .blog__pagination{
      padding-left: 496px;
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
  <li><a href="index.jsp">Trang chủ</a></li>
<%--  <li><a href="/dung-cu/">  Tin tức</a></li>--%>
  <li><span>  Tin tức</span></li>
</ul>


<!-- Blog Section Begin -->
<section class="blog spad">
  <div class="container">
    <div class="row">

        <div class="row">
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="blog__item">
              <div class="blog__item__pic">
                <img src="https://concung.com/img/news/2023/2534-1698209686-cover.png" alt="">
              </div>
              <div class="blog__item__text">
                <ul>
                  <li><i class="fa fa-calendar-o"></i> 25/10/2023</li>
                  <li><i class="fa fa-comment-o"></i> 5</li>
                </ul>
                <h5><a class="long-title" href="blog_detail.jsp">Bánh xốp ăn dặm Puffs Happy Baby có mấy loại? Giá bao nhiêu?</a></h5>
                <p class="long-content">Thuộc thương hiệu thực phẩm hữu cơ nổi tiếng tại Mỹ, bánh xốp ăn dặm Puffs Happy Baby được các bé yêu thích nhờ vào hương vị đa dạng và thơm ngon. </p>
                <a href="blog_detail.jsp" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="blog__item">
              <div class="blog__item__pic">
                <img src="https://concung.com/img/news/2023/2533-1698207874-cover.png" alt="">
              </div>
              <div class="blog__item__text">
                <ul>
                  <li><i class="fa fa-calendar-o"></i> 25/10/2023</li>
                  <li><i class="fa fa-comment-o"></i> 5</li>
                </ul>
                <h5 class="long-title"><a href="#">Hướng dẫn cách dùng vitamin Gummies CHEWY VITES hiệu quả và an toàn nhất</a></h5>
                <p class="long-content">Với mong muốn bổ sung hệ dưỡng chất cần thiết giúp bé phát triển khỏe mạnh, nhiều ba mẹ đã tin chọn sản phẩm vitamin Gummies CHEWY VITES  </p>
                <a href="#" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="blog__item">
              <div class="blog__item__pic">
                <img src="https://concung.com/img/news/2023/2532-1698206569-cover.png" alt="">
              </div>
              <div class="blog__item__text">
                <ul>
                  <li><i class="fa fa-calendar-o"></i> 25/10/2023</li>
                  <li><i class="fa fa-comment-o"></i> 5</li>
                </ul>
                <h5 class="long-title"><a href="#">Men vi sinh SynterAct & men vi sinh BioGaia cho trẻ sơ sinh uống lúc nào là tốt nhất?</a></h5>
                <p class="long-content">Với tác dụng hệ tiêu hóa của bé sơ sinh khoẻ mạnh, SynterAct và BioGaia là 2 thương hiệu men vi sinh được nhiều ba mẹ tin chọn bậc nhất khi đến với chuỗi cửa hàng mẹ và bé Con Cưng </p>
                <a href="#" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="blog__item">
              <div class="blog__item__pic">
                <img src="https://concung.com/img/news/2023/2531-1698145166-cover.png" alt="">
              </div>
              <div class="blog__item__text">
                <ul>
                  <li><i class="fa fa-calendar-o"></i> 25/10/2023</li>
                  <li><i class="fa fa-comment-o"></i> 5</li>
                </ul>
                <h5 class="long-title"><a href="#">Bình sữa cho trẻ sơ sinh: Nên mua loại bao nhiêu ml?</a></h5>
                <p class="long-content">Bên cạnh chất liệu, loại cổ bình, size núm ty, thì dung tích bình cũng là đặc điểm mà ba mẹ cần quan tâm khi lựa chọn bình sữa cho trẻ sơ sinh </p>
                <a href="#" class="blog__btn">Đọc thêm <span class="arrow_right"></span></a>
              </div>
            </div>
          </div>>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="blog__item">
              <div class="blog__item__pic">
                <img src="https://concung.com/img/news/2023/2527-1698044342-cover.png" alt="">
              </div>
              <div class="blog__item__text">
                <ul>
                  <li><i class="fa fa-calendar-o"></i> 25/10/2023</li>
                  <li><i class="fa fa-comment-o"></i> 5</li>
                </ul>
                <h5 class="long-title"><a href="#">Gummies CHEWY VITES hỗ trợ tăng sức đề kháng có tốt không? Bé mấy tuổi dùng được?</a></h5>
                <p class="long-content">Gummies CHEWY VITES hỗ trợ tăng sức đề kháng là một dòng vitamin cho bé được nhiều trẻ mê tít khi đến Con Cưng bởi hương vị thơm ngon và hình dáng dễ thương. </p>
                <a href="#" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
              </div>
            </div>
          </div>
          <div class="col-lg-12">
            <div class="product__pagination blog__pagination">
              <a href="#">1</a>
              <a href="#">2</a>
              <a href="#">3</a>
              <a href="#"><i class="fa fa-long-arrow-right"></i></a>
            </div>
          </div>
        </div>

    </div>
  </div>
</section>
<!-- Blog Section End -->

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