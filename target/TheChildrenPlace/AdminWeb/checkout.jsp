<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý đơn hàng</title>
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
    </style>
</head>
<body onload="openCityOnLoad()">
<%@include file="include/menu.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="manager-checkout">
            <div class="title">Quản Lý Đơn Hàng</div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tab row element-button">
                        <button class="tablinks col-sm-2" id="defaultOpen" onclick="openCity(event, 'tab1')">Chờ xác
                            nhận
                        </button>
                        <button class="tablinks col-sm-2"  onclick="openCity(event, 'tab2')">Đã xác nhận</button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab4')">Đang giao</button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab5')">Đã giao</button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab3')">Đã hủy</button>
                    </div>
                    <div id="tab1" class="tabcontent">
                        <table id="table-id-1" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Tên khách hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Tổng tiền</th>
                                <th scope="col">Chức năng</th>


                            </tr>
                            </thead>
                            <tbody>
<c:forEach var="b" items="${br}">
                            <tr>
                                <th scope="row">${b.id}</th>
                                <td>${b.getNameUser()}</td>
                                <td><fmt:formatDate value="${b.date}" pattern="dd/MM/yyyy" /></td>
                                <td>${b.getAddress()}, ${b.getWard()}, ${b.getDistrict()}, ${b.getProvince()}</td>

                                <td><fmt:formatNumber value="${b.total}" pattern="#,##0"/><sup>đ</sup></td>
                                <td>
                                    <a title="xem chi tiết đơn hàng" href="BillDetailAdmin?id=${b.id}" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-search"></i> <!-- Biểu tượng kính lúp -->
                                        </i>
                                    </a>
                                    <a title="Xác nhận đơn hàng" href="ConfirmBillAdmin?id=${b.id}" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-check"></i> <!-- Biểu tượng thùng rác -->
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

                    <div id="tab2" class="tabcontent">
                        <table id="table-id-2" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Tên khách hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Tổng tiền</th>
                                <th scope="col">Chức năng</th>


                            </tr>
                            </thead>
                            <tbody>
<c:forEach var="b" items="${bco}">
                            <tr>
                                <th scope="row">${b.id}</th>
                                <td>${b.getNameUser()}</td>
                                <td><fmt:formatDate value="${b.date}" pattern="dd/MM/yyyy" /></td>
                                <td>${b.getAddress()}, ${b.getWard()}, ${b.getDistrict()}, ${b.getProvince()}</td>

                                <td><fmt:formatNumber value="${b.total}" pattern="#,##0"/><sup>đ</sup></td>
                                <td>
                                    <a title="xem chi tiết đơn hàng" href="BillDetailAdmin?id=${b.id}" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-search"></i> <!-- Biểu tượng kính lúp -->
                                        </i>
                                    </a>
                                    <a title="giao hàng" href="ShipBillAdmin?id=${b.id}"  class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-truck"></i>
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

                    <div id="tab3" class="tabcontent">
                        <table id="table-id" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Tên khách hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Tổng tiền</th>
                                <th scope="col">Chức năng</th>
                            </tr>
                            </thead>
                            <tbody>
<c:forEach var="b" items="${bc}">
                            <tr>
                                <th scope="row">${b.id}</th>
                                <td>${b.getNameUser()}</td>
                                <td><fmt:formatDate value="${b.date}" pattern="dd/MM/yyyy" /></td>
                                <td>${b.getAddress()}, ${b.getWard()}, ${b.getDistrict()}, ${b.getProvince()}</td>

                                <td><fmt:formatNumber value="${b.total}" pattern="#,##0"/><sup>đ</sup></td>
                                <td>
                                    <a title="xem chi tiết đơn hàng" href="BillDetailAdmin?id=${b.id}" class="icon-link">
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
                    <div id="tab4" class="tabcontent">
                        <table id="table-id-4" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Tên khách hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Tổng tiền</th>
                                <th scope="col">Chức năng</th>


                            </tr>
                            </thead>
                            <tbody>
<c:forEach var="b" items="${bs}">
                            <tr>
                                <th scope="row">${b.id}</th>
                                <td>${b.getNameUser()}</td>
                                <td><fmt:formatDate value="${b.date}" pattern="dd/MM/yyyy" /></td>
                                <td>${b.getAddress()}, ${b.getWard()}, ${b.getDistrict()}, ${b.getProvince()}</td>

                                <td><fmt:formatNumber value="${b.total}" pattern="#,##0"/><sup>đ</sup></td>
                                <td>
                                    <a title="xem chi tiết đơn hàng" href="BillDetailAdmin?id=${b.id}" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-search"></i> <!-- Biểu tượng kính lúp -->
                                        </i>
                                    </a>
                                    <a title="giao thành công" href="DeliveredBillAdmin?id=${b.id}" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-check"></i> <!-- Biểu tượng thùng rác -->
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
                    <div id="tab5" class="tabcontent">
                        <table id="table-id-5" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Tên khách hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Tổng tiền</th>
                                <th scope="col">Chức năng</th>


                            </tr>
                            </thead>
                            <tbody>
<c:forEach var="b" items="${bd}">
                            <tr>
                                <th scope="row">${b.id}</th>
                                <td>${b.getNameUser()}</td>
                                <td><fmt:formatDate value="${b.date}" pattern="dd/MM/yyyy" /></td>
                                <td>${b.getAddress()}, ${b.getWard()}, ${b.getDistrict()}, ${b.getProvince()}</td>

                                <td><fmt:formatNumber value="${b.total}" pattern="#,##0"/><sup>đ</sup></td>
                                <td>
                                    <a title="xem chi tiết đơn hàng" href="BillDetailAdmin?id=${b.id}" class="icon-link">
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
</section>


<script src="AdminWeb/js/jquery.min.js"></script>
<script src="AdminWeb/js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf8" src="AdminWeb/js/bootstrap.bundle.min.js"></script>
<script src="AdminWeb/js/main.js"></script>
<script>
    $("#table-id").DataTable();
    $("#table-id-1").DataTable();
    $("#table-id-2").DataTable();
    $("#table-id-4").DataTable();
    $("#table-id-5").DataTable();

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
