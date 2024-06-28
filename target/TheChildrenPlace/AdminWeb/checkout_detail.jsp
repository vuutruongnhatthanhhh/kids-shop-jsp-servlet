<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết đơn hàng</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="AdminWeb/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="AdminWeb/css/all.min.css">
    <link rel="stylesheet" href="AdminWeb/css/style.css">
    <link rel="stylesheet" href="AdminWeb/css/checkout.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        .icon-wrapper {
            margin-top: 2px;
            background-color: #ffacac;
            display: inline-block;
            margin-right: 10px;
            padding: 5px; /* Điều này tạo khoảng trắng xung quanh biểu tượng */
            border-radius: 50%; /* Để tạo biểu tượng hình tròn */
        }

        .icon-wrapper i {
            color: #ffffff; /* Màu trắng cho biểu tượng */
        }

        .way {

        }
    </style>
</head>
<body>
<%@include file="include/menu.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="manager-checkout">
            <div class="title">Quản Lý Đơn Hàng</div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tab row element-button">
                        <button class="tablinks col-sm-2" id="defaultOpen" onclick="openCity(event, 'tab1')">Chi tiết đơn hàng
                        </button>

                    </div>
                    <div id="tab1" class="tabcontent">
                        <p><span style="font-weight: bold">Tên người nhận: </span> ${name}</p>
                        <p><span style="font-weight: bold">Số điện thoại: </span> ${phone}</p>
                        <p><span style="font-weight: bold">Ngày đặt hàng: </span> <fmt:formatDate value="${date}" pattern="dd/MM/yyyy" /></p>
                        <p><span style="font-weight: bold">Địa chỉ: </span> ${address}, ${ward}, ${district}, ${province}</p>

                        <div class="card">
                            <div class="card-body">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th scope="col">Sản phẩm</th>
                                        <th scope="col">Giá tiền</th>
                                        <th scope="col">Số lượng</th>
                                        <th scope="col">Thành tiền</th>


                                    </tr>
                                    </thead>
                                    <tbody>
<c:forEach items="${bd}" var="bd">
                                    <tr>
                                        <th style="font-weight: normal"  scope="row">${bd.getNameProduct()}</th>
                                        <td><a><fmt:formatNumber value="${bd.price}" pattern="#,##0"/><sup>đ</sup></a></td>
                                        <td><a>${bd.amount}</a></td>
                                        <td><fmt:formatNumber value="${bd.getTotal()}" pattern="#,##0"/><sup>đ</sup></td>


                                    </tr>
</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <p style="margin-left: 835px; color: red"><span style="font-weight: bold">Phí giao hàng: </span>30,000  <sup>đ</sup> </p>
                        <p style="margin-left: 835px; color: red"><span style="font-weight: bold">Tổng tiền: </span>  </span> <fmt:formatNumber value="${grandTotal}" pattern="#,##0"/><sup>đ</sup> </p>

                        <%
                            // Lấy giá trị của status từ request
                            int status = (int) request.getAttribute("status");
                        %>
                        <%
                            // Kiểm tra điều kiện status == 0
                            if (status == 0) {
                        %>
                        <a title="Xác nhận đơn hàng" href="ConfirmInBillAdmin?id=${idbill}" class=" icon-link">
                            <i style="margin-left: 865px" class="icon-wrapper">
                                <i class="fas fa-check"></i>
                            </i>
                        </a>
                        <a title="hủy đơn hàng" href="CancelInBillAdminRecent?id=${idbill}" class=" icon-link">
                            <i style="margin-left: 865px" class="icon-wrapper">
                                <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->
                            </i>
                        </a>

                        <%
                            }
                        %>


                        <%

                            if (status == 1) {
                        %>
                        <a title="giao hàng" href="ShipBillAdmin?id=${idbill}" class=" icon-link">
                            <i style="margin-left: 865px" class="icon-wrapper">
                                <i class="fas fa-truck"></i>
                            </i>
                        </a>
                        <a title="hủy đơn hàng" href="CancelBillAdminConfirmed?id=${idbill}" class="icon-link">
                            <i style="margin-left: 865px" class="icon-wrapper">
                                <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->
                            </i>
                        </a>

                        <%
                            }
                        %>

                        <%

                            if (status == 2) {
                        %>
                        <a title="đã giao hàng" href="DeliveredBillAdmin?id=${idbill}" class=" icon-link">
                            <i style="margin-left: 865px" class="icon-wrapper">
                                <i class="fas fa-check"></i>
                            </i>
                        </a>
                        <a title="hủy đơn hàng" href="CancelBillAdminShip?id=${idbill}" class="icon-link">
                            <i style="margin-left: 865px" class="icon-wrapper">
                                <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->
                            </i>
                        </a>

                        <%
                            }
                        %>
                    </div>


                </div>
            </div>
        </div>
    </div>
</section>


<script src="AdminWeb/js/jquery.min.js"></script>
<script src="AdminWeb/js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf8" src="AdminWeb/js/bootstrap.bundle.min.js"></script>
<script src="AdminWeb/js/main.js"></script>
<script>

    // $("#table-id-1").DataTable();

</script>
<script>
    function openCity(evt, name) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(name).style.display = "block";
        evt.currentTarget.className += " active";

        // Cập nhật URL với tham số tab
        var updatedUrl = window.location.href.split('?')[0] + '?tab=' + name;
        history.pushState(null, null, updatedUrl);
    }

    function openCityOnLoad() {
        // Đọc tham số từ URL khi trang được tải
        var tabParam = new URLSearchParams(window.location.search).get('tab');
        if (tabParam) {
            openCity({ currentTarget: document.getElementById(tabParam) }, tabParam);
        } else {
            // Nếu không có tham số, mở tab mặc định
            document.getElementById("defaultOpen").click();
        }
    }

    // Gọi hàm openCityOnLoad khi trang được tải
    window.onload = openCityOnLoad;
</script>

</body>
</html>
