<%@ page import="Model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý kho</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="AdminWeb/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="AdminWeb/css/all.min.css">
    <link rel="stylesheet" href="AdminWeb/css/style.css">
    <link rel="stylesheet" href="AdminWeb/css/product.css">
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
<body>
<%@include file="include/menu.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="manager-product">
            <div class="title">Danh Sách Sản Phẩm Trong Kho</div>
            <div class="row">
                <div class="col-md-12">
                    <div class="row element-button">
                        <div class="col-sm-2">
                            <a class="btn btn-add btn-sm" href="AddProductAdmin" title="Thêm">
                                <i class="fas fa-plus"></i>
                                Nhập hàng mới</a>
                        </div>

                    </div>
                    <table id="table-id" class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Mã</th>
                            <th scope="col">Tên sản phẩm</th>
                            <%--                            <th scope="col">Khối lượng</th>--%>
                            <th scope="col">Ảnh</th>
                            <th scope="col">Số lượng</th>
                            <th scope="col">Tình trạng</th>
                            <th scope="col">Giá bán</th>
                            <th scope="col">Giá nhập</th>
                            <th scope="col">Giảm giá</th>
                            <th scope="col">Nhà cung cấp</th>
                            <th scope="col">Danh mục</th>
                            <th scope="col">Chức năng</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            User user = (User) session.getAttribute("user");
                            int role = user.getRole();

                        %>
<c:forEach var="products" items="${products}">
                        <tr>
                            <th scope="row">${products.id}</th>
                            <td>${products.name}</td>
                            <%--                            <td>300G</td>--%>
                            <td><img src="${products.getImageUrl()}" style="max-width: 100px; max-height: 100px;"></td>
                            <td>${products.amount_storage}</td>
                            <td><span class="badge ${products.amount_storage == 0 ? 'bg-danger' : 'bg-success'}">${products.amount_storage == 0 ? 'Hết hàng' : 'Còn hàng'}</span></td>
                            <td><fmt:formatNumber value="${products.price}" pattern="#,##0"/><sup>đ</sup></td>
                            <td><fmt:formatNumber value="${products.import_price}" pattern="#,##0"/><sup>đ</sup></td>
                            <td>${products.discount}<span>%</span></td>
                            <td>${products.getNameVendor()}</td>
                            <td>${products.getNameType()}</td>
                            <td>
                                <a title="Thêm số lượng" href="UpToStorage?id=${products.id}" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-plus"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                                <a title="Chỉnh sửa" href="UpdateProductStorage?id=${products.id}" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-pen"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                                <% if (role!=1) { %>
                                <a title="Xóa sản phẩm" href="RemoveProductAdmin?id=${products.id}" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                                <% } %>



                            </td>
                        </tr>
</c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="AdminWeb/js/jquery.min.js"></script>
<script src="AdminWeb/js/jquery.dataTables.js"></script>

<script type="text/javascript" charset="utf8" src="AdminWeb/js/bootstrap.bundle.min.js"></script>
<script>$("#table-id").DataTable();
</script>
</body>
</html>
