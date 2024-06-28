<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="AdminWeb/css/all.min.css">
    <link rel="stylesheet" href="AdminWeb/css/style.css">
    <link rel="stylesheet" href="AdminWeb/css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>
<body>
<%@include file="include/menu.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="view-box">
            <div class="header-box">
                <div class="title">Thống kê trong tháng</div>
                <%
                    int totalBill = (int) request.getAttribute("totalBill");
                    int totalBillCancel = (int) request.getAttribute("totalBillCancel");
                    int totalProductSoldOut = (int) request.getAttribute("totalProductSoldOut");
                    int totalIncome = (int) request.getAttribute("totalIncome");
                    Locale locale = new Locale("vi", "VN");
                    NumberFormat currencyFormatter = NumberFormat.getCurrencyInstance(locale);

                %>
<%--                <div>--%>
<%--                    <select>--%>
<%--                        <option value="0">Hôm nay</option>--%>
<%--                        <option value="1">Tuần</option>--%>
<%--                        <option value="2">Tháng</option>--%>
<%--                    </select>--%>
<%--                </div>--%>
            </div>
            <div class="overview-boxes">
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Tổng Đơn Hàng</div>
                        <div class="number"><%= totalBill %> đơn hàng</div>
                    </div>
                    <i class="fa-solid fa-cart-plus cart"></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Hết Hàng</div>
                        <div class="number"><%= totalProductSoldOut %> sản phẩm</div>
                    </div>
                    <i class="fa-solid fa-xmark cart two"></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Doanh Thu</div>
                        <div class="number">   <%= currencyFormatter.format(totalIncome) %></div>
                    </div>
                    <i class="fa-solid fa-dollar-sign cart three"></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Đơn Hàng Hủy</div>
                        <div class="number"><%= totalBillCancel %> đơn hàng</div>
                    </div>
                    <i class="fa-solid fa-scroll cart four"></i>
                </div>
            </div>
        </div>
        <div class="sales-boxes">
            <div class="recent-sales box">
                <div class="title">Đơn Hàng Gần Đây</div>
                <div class="sales-details">
                    <table class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Mã đơn hàng</th>
                            <th scope="col">Tên khách hàng</th>
                            <th scope="col">Ngày đặt</th>
                            <th scope="col">Tổng tiền</th>
                        </tr>
                        </thead>
                        <tbody>
<c:forEach var="b" items="${br}">
                        <tr>
                            <th scope="row">${b.id}</th>
                            <td>${b.getNameUser()}</td>
                            <td><fmt:formatDate value="${b.date}" pattern="dd/MM/yyyy" /></td>
                            <td><fmt:formatNumber value="${b.total}" pattern="#,##0"/><sup>đ</sup></td>
                        </tr>
</c:forEach>

                        </tbody>
                    </table>
                </div>
                <div class="button">
                    <a href="BillAdmin">Xem tất cả</a>
                </div>
            </div>
            <div class="top-sales box">
                <div class="title">Sản Phẩm Bán Chạy</div>
                <ul class="top-sales-details">
<c:forEach var="hot" items="${hot}">
                    <li>
                        <a href="">

                            <span title="${hot.name}" class="product">${hot.name}</span>
                        </a>
                        <span class="price"><fmt:formatNumber value="${hot.price}" pattern="#,##0"/><sup>đ</sup></span>
                    </li>
</c:forEach>
                </ul>
            </div>
        </div>
    </div>
</section>
</body>
</html>
