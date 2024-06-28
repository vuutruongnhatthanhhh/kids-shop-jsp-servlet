<%@ page import="Model.User" %>
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
    <title>Thông tin tài khoản</title>

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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        select {
            width: 100%;
        }
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

        /* Style the tab */
        .tab {
            overflow: hidden;
            border: 1px solid #ffacac;
            background-color: #ffacac;
        }

        /* Style the buttons that are used to open the tab content */
        .tab button {
            margin-left: 103px;
            background-color: inherit;
            float: left;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 13px 16px;
            transition: 0.3s;
        }

        /* Change background color of buttons on hover */
        .tab button:hover {
            background-color: #ffacac;
        }

        /* Create an active/current tablink class */
        .tab button.active {
            background-color: #ffacac;
        }

        /* Style the tab content */
        .tab-content {
            display: none;
            padding: 6px 12px;
            border: 1px solid #ccc;
            border-top: none;
            animation: fadeEffect 1s;
        }

        @keyframes fadeEffect {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        /*forget.css*/
        .uppercase {
            line-height: 1.2;
            text-transform: uppercase;
        }

        .entry-title {
            margin-bottom: 30px;
        }

        .woocommerce-form-row--first .user-label {
            display: block;
            color: #ffacac;
        }

        .woocommerce-form-row--first .input-text {
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            border: 1px solid #ddd;
            padding: 0 0.75em;
            height: 2.507em;
            font-size: .97em;
            border-radius: 0;
            max-width: 100%;
            width: 100%;
            vertical-align: middle;
            background-color: #fff;
            color: #333;
            -webkit-box-shadow: inset 0 1px 2px rgb(0 0 0 / 10%);
            box-shadow: inset 0 1px 2px rgb(0 0 0 / 10%);
            -webkit-transition: color .3s, border .3s, background .3s, opacity .3s;
            -o-transition: color .3s, border .3s, background .3s, opacity .3s;
            transition: color .3s, border .3s, background .3s, opacity .3s;
        }

        .woocommerce-form-row .button {
            color: #ffffff;
            background-color: #ffacac;
            border: 1px solid #ffacac;
            padding: 5px 20px;
            font-size: 18px;
            font-weight: 700;
            text-transform: uppercase;
        }

        .btn.btn-black {
            background: #ffacac;
            border: 1px solid #ffacac;
            color: #fff;
        }


        /*test*/
        * {
            box-sizing: border-box
        }

        /* Style the tab */
        .tabtab {

            height: 622px;
        }

        .tab {
            float: left;
            border: #ffacac;
            background-color: white;
            width: 30%;
            height: 300px;
        }

        /* Style the buttons that are used to open the tab content */
        .tab button {
            display: block;
            background-color: inherit;
            color: black;
            padding: 10px 16px;
            width: 100%;
            border: none;
            outline: none;
            text-align: left;
            cursor: pointer;
            transition: 0.3s;
        }

        /* Change background color of buttons on hover */
        .tab button:hover {
            background-color: #ffacac;
            color: white;
        }

        /* Create an active/current "tab button" class */
        .tab button.active {
            background-color: #ffacac;
            color: white;
        }

        /* Style the tab content */
        .tabcontent {
            float: left;
            padding: 0px 12px;
            border: white;
            width: 70%;
            border-left: none;
            height: 300px;
            background-color: white;
        }

        ol.progtrckr {
            margin: 0;
            padding: 0;
            list-style-type: none;
        }

        ol.progtrckr li {
            display: inline-block;
            text-align: center;
            line-height: 3.5em;
        }

        ol.progtrckr[data-progtrckr-steps="2"] li {
            width: 49%;
        }

        ol.progtrckr[data-progtrckr-steps="3"] li {
            width: 33%;
        }

        ol.progtrckr[data-progtrckr-steps="4"] li {
            width: 24%;
        }

        ol.progtrckr[data-progtrckr-steps="5"] li {
            width: 19%;
        }

        ol.progtrckr[data-progtrckr-steps="6"] li {
            width: 16%;
        }

        ol.progtrckr[data-progtrckr-steps="7"] li {
            width: 14%;
        }

        ol.progtrckr[data-progtrckr-steps="8"] li {
            width: 12%;
        }

        ol.progtrckr[data-progtrckr-steps="9"] li {
            width: 11%;
        }

        ol.progtrckr li.progtrckr-done {
            color: black;
            border-bottom: 4px solid #ffacac;
        }

        ol.progtrckr li.progtrckr-todo {
            color: silver;
            border-bottom: 4px solid silver;
        }

        ol.progtrckr li:after {
            content: "\00a0\00a0";
        }

        ol.progtrckr li:before {
            position: relative;
            bottom: -2.5em;
            float: left;
            left: 50%;
            line-height: 1em;
        }

        ol.progtrckr li.progtrckr-done:before {
            content: "\2713";
            color: white;
            background-color: #ffacac;
            height: 2.2em;
            width: 2.2em;
            line-height: 2.2em;
            border: none;
            border-radius: 2.2em;
        }

        ol.progtrckr li.progtrckr-todo:before {
            content: "\039F";
            color: silver;
            background-color: white;
            font-size: 2.2em;
            bottom: -1.2em;
        }

        .tab-1 {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #ffacac;
        }

        /* Style the buttons inside the tab */
        .tab-1 button {
            background-color: inherit;
            float: left;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            transition: 0.3s;
            font-size: 17px;
            color: white;
        }


        .tab-1 button:hover {
            color: white;
        }

        /* Create an active/current tablink class */
        .tab-1 button.active {
            border-bottom: 2px solid white;
            color: white;
        }

        /* Style the tab content */
        .tabcontent-1 {
            display: none;
            padding: 6px 12px;
            border: 1px solid #ccc;
            border-top: none;
        }


        .icon-wrapper {
            background-color: #ffacac;
            display: inline-block;
            margin-right: 10px;
            padding: 5px; /* Điều này tạo khoảng trắng xung quanh biểu tượng */
            border-radius: 50%; /* Để tạo biểu tượng hình tròn */
        }

        .icon-wrapper i {
            color: #ffffff; /* Màu trắng cho biểu tượng */
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
    <%--  <li><a href="/dung-cu/">  Cửa hàng</a></li>--%>
    <li><span>  Thông tin tài khoản </span></li>
</ul>



<!-- Product Section Begin -->
<div class="tabtab">
    <div class="tab">
        <a href="UserInfo"> <button class="tablinks" id="defaultOpen">Thông tin cá nhân</button></a>
        <a href="OrderStatus"><button class="tablinks">Tình trạng đơn hàng</button></a>
        <a href="changePassword.jsp"> <button  class="tablinks" >Đổi mật khẩu</button></a>
    </div>



        <div id="Paris" class="tabcontent">

            <div class="tab-1">
                <button class="tablinks-1" onclick="openCity1(event, 'tab1')" id="default">Chờ xác nhận</button>
                <button class="tablinks-1" onclick="openCity1(event, 'tab5')">Đã xác nhận</button>
                <button class="tablinks-1" onclick="openCity1(event, 'tab4')">Đang vận chuyển</button>
                <button class="tablinks-1" onclick="openCity1(event, 'tab2')">Đã giao</button>
                <button class="tablinks-1" onclick="openCity1(event, 'tab3')">Đã hủy</button>
            </div>

            <div id="tab1" class="tabcontent-1">
                <div class="card">
                    <div class="card-body">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Tổng tiền</th>
                                <th scope="col">Chức năng</th>
    <%--                            <th scope="col">Xem chi tiết đơn hàng</th>--%>

                            </tr>
                            </thead>
                            <tbody>
<c:forEach items="${br}" var="b">
                            <tr>
                                <th scope="row">${b.id}</th>

                                <td><a> <fmt:formatDate value="${b.date}" pattern="dd/MM/yyyy" /></a></td>
                                <td><fmt:formatNumber value="${b.total}" pattern="#,##0"/><sup>đ</sup></td>
                                <td>
                                    <a title="xem chi tiết đơn hàng" href="BillDetailUser?id=${b.id}" class="icon-link" >
                                        <i class="icon-wrapper">
                                            <i class="fas fa-search"></i> <!-- Biểu tượng kính lúp -->
                                        </i>
                                    </a>
                                    <a title="hủy đơn hàng" href="CancelBillUser?id=${b.id}" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->
                                        </i>
                                    </a>


                                </td>

                            </tr>
</c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div id="tab2" class="tabcontent-1">
                <div class="card">
                    <div class="card-body">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Tổng tiền</th>
                                <th scope="col">Chức năng</th>


                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${bd}" var="b">
                                <tr>
                                    <th scope="row">${b.id}</th>

                                    <td><a> <fmt:formatDate value="${b.date}" pattern="dd/MM/yyyy" /></a></td>
                                    <td><fmt:formatNumber value="${b.total}" pattern="#,##0"/><sup>đ</sup></td>
                                    <td>
                                        <a title="xem chi tiết đơn hàng" href="BillDetailUser?id=${b.id}" class="icon-link">
                                            <i class="icon-wrapper">
                                                <i class="fas fa-search"></i> <!-- Biểu tượng kính lúp -->
                                            </i>
                                        </a>



                                    </td>

                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div id="tab3" class="tabcontent-1">
                <div class="card">
                    <div class="card-body">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Tổng tiền</th>
                                <th scope="col">Chức năng</th>


                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${bc}" var="b">
                                <tr>
                                    <th scope="row">${b.id}</th>

                                    <td><a> <fmt:formatDate value="${b.date}" pattern="dd/MM/yyyy" /></a></td>
                                    <td><fmt:formatNumber value="${b.total}" pattern="#,##0"/><sup>đ</sup></td>
                                    <td>
                                        <a title="xem chi tiết đơn hàng" href="BillDetailUser?id=${b.id}" class="icon-link">
                                            <i class="icon-wrapper">
                                                <i class="fas fa-search"></i> <!-- Biểu tượng kính lúp -->
                                            </i>
                                        </a>



                                    </td>

                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div id="tab4" class="tabcontent-1">
                <div class="card">
                    <div class="card-body">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Tổng tiền</th>
                                <th scope="col">Chức năng</th>
                                <%--                            <th scope="col">Xem chi tiết đơn hàng</th>--%>

                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${bs}" var="b">
                                <tr>
                                    <th scope="row">${b.id}</th>

                                    <td><a> <fmt:formatDate value="${b.date}" pattern="dd/MM/yyyy" /></a></td>
                                    <td><fmt:formatNumber value="${b.total}" pattern="#,##0"/><sup>đ</sup></td>
                                    <td>
                                        <a title="xem chi tiết đơn hàng" href="BillDetailUser?id=${b.id}" class="icon-link">
                                            <i class="icon-wrapper">
                                                <i class="fas fa-search"></i> <!-- Biểu tượng kính lúp -->
                                            </i>
                                        </a>



                                    </td>

                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div id="tab5" class="tabcontent-1">
                <div class="card">
                    <div class="card-body">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Tổng tiền</th>
                                <th scope="col">Chức năng</th>
                                <%--                            <th scope="col">Xem chi tiết đơn hàng</th>--%>

                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${bco}" var="b">
                                <tr>
                                    <th scope="row">${b.id}</th>

                                    <td><a> <fmt:formatDate value="${b.date}" pattern="dd/MM/yyyy" /></a></td>
                                    <td><fmt:formatNumber value="${b.total}" pattern="#,##0"/><sup>đ</sup></td>
                                    <td>
                                        <a title="xem chi tiết đơn hàng" href="BillDetailUser?id=${b.id}" class="icon-link">
                                            <i class="icon-wrapper">
                                                <i class="fas fa-search"></i> <!-- Biểu tượng kính lúp -->
                                            </i>
                                        </a>



                                    </td>

                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>


</div>


<!-- Product Section End -->

<!-- Footer Section Begin -->
<%--<%@include file="include/footer.jsp"%>--%>
<!-- Footer Section End -->

<!-- Js Plugins -->


<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<%--<script src="js/jquery.nice-select.min.js"></script>--%>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
<script>
    var citis = document.getElementById("city");
    var districts = document.getElementById("dist");
    var wards = document.getElementById("ward");


    var Parameter = {
        url: "https://raw.githubusercontent.com/kenzouno1/DiaGioiHanhChinhVN/master/data.json",
        method: "GET",
        responseType: "application/json",
    };
    var promise = axios(Parameter);
    promise.then(function (result) {
        renderCity(result.data);
    });
    function update(){
        var citis = document.getElementById("city");
        var districts = document.getElementById("dist");
        var wards = document.getElementById("ward");

        var option1 = citis.options[citis.selectedIndex];
        var option2 = districts.options[districts.selectedIndex];
        var option3 = wards.options[wards.selectedIndex];

        document.getElementById('text1').value = option1.text;
        document.getElementById('text2').value = option2.text;
        document.getElementById('text3').value = option3.text;
    }
    update();

    function renderCity(data) {
        for (const x of data) {
            citis.options[citis.options.length] = new Option(x.Name, x.Id);
        }
        citis.onchange = function () {
            dist.length = 1;
            ward.length = 1;
            if(this.value != ""){
                const result = data.filter(n => n.Id === this.value);

                for (const k of result[0].Districts) {
                    dist.options[dist.options.length] = new Option(k.Name, k.Id);
                }
            }
        };
        dist.onchange = function () {
            ward.length = 1;
            const dataCity = data.filter((n) => n.Id === citis.value);
            if (this.value != "") {
                const dataWards = dataCity[0].Districts.filter(n => n.Id === this.value)[0].Wards;

                for (const w of dataWards) {
                    wards.options[wards.options.length] = new Option(w.Name, w.Id);
                }
            }
        };
    }
</script>
<script>
    function openCity(evt, cityName) {
        // Declare all variables
        var i, tabcontent, tablinks;

        // Get all elements with class="tabcontent" and hide them
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }

        // Get all elements with class="tablinks" and remove the class "active"
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }

        // Show the current tab, and add an "active" class to the link that opened the tab
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
    }

    function openCity1(evt, cityName) {
        // Declare all variables

        var i, tabcontent, tablinks;
        // Get all elements with class="tabcontent" and hide them
        tabcontent = document.getElementsByClassName("tabcontent-1");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";

        }
        // Get all elements with class="tablinks" and remove the class "active"
        tablinks = document.getElementsByClassName("tablinks-1");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");

        }
        // Show the current tab, and add an "active" class to the link that opened the tab
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";

    }




</script>


<script>

    document.getElementById("default").click();
</script>



</body>

</html>
