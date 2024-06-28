<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý</title>
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
            <div class="title">Danh Sách Sản Phẩm Trong Cửa Hàng</div>
            <div class="row">
                <div class="col-md-12">

                    <table id="table-id" class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Mã</th>
                            <th scope="col">Tên sản phẩm</th>
<%--                            <th scope="col">Khối lượng</th>--%>
                            <th scope="col">Ảnh</th>
                            <th scope="col">Số lượng</th>
                            <th scope="col">Tình trạng</th>
                            <th scope="col">Giá tiền</th>
                            <th scope="col">Giảm giá</th>
                            <th scope="col">Danh mục</th>
                            <th scope="col">Chức năng</th>
                        </tr>
                        </thead>
                        <tbody>
<c:forEach var="products" items="${products}">
                        <tr>
                            <th scope="row">${products.id}</th>
                            <td>${products.name}</td>
<%--                            <td>300G</td>--%>
                            <td><img src="${products.getImageUrl()}" style="max-width: 100px; max-height: 100px;"></td>
                            <td>${products.amount_shop}</td>
                            <td><span class="badge ${products.amount_shop == 0 ? 'bg-danger' : 'bg-success'}">${products.amount_shop == 0 ? 'Hết hàng' : 'Còn hàng'}</span></td>
                            <td><fmt:formatNumber value="${products.price}" pattern="#,##0"/><sup>đ</sup></td>
                            <td>${products.discount}<span>%</span></td>
                            <td>${products.getNameType()}</td>
                            <td>
                                <a title="Chuyển hàng từ kho lên" href="UpToShop?id=${products.id}" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-arrow-up"></i>
                                    </i>
                                </a>
                                <a title="Chỉnh sửa" href="UpdateProductAdmin?id=${products.id}" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-pen"></i>
                                    </i>
                                </a>
<%--                                <a title="Xóa" href="#" class="icon-link">--%>
<%--                                    <i class="icon-wrapper">--%>
<%--                                        <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->--%>
<%--                                    </i>--%>
<%--                                </a>--%>



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
