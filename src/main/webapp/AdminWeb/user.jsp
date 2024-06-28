<%@ page import="Model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý tài khoản</title>
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
            <div class="title">Danh Sách Tài Khoản</div>
            <%
                User user = (User) session.getAttribute("user");
                int role = user.getRole();

            %>
            <div class="row">
                <div class="col-md-12">
                    <% if (role!=1) { %>
                    <div class="row element-button">
                        <div class="col-sm-2">
                            <a class="btn btn-add btn-sm" href="AddUserAdmin" title="Thêm">
                                <i class="fas fa-plus"></i>
                                Thêm tài khoản</a>
                        </div>

                    </div>
                    <% } %>
                    <table id="table-id" class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Mã tài khoản</th>
                            <th scope="col">Tên tài khoản</th>
                            <th scope="col">Tên người dùng</th>
                            <th scope="col">Email</th>

                            <th scope="col">Quyền</th>
                            <th scope="col">Trạng thái</th>
                            <th scope="col">Chức năng</th>
                        </tr>
                        </thead>
                        <tbody>
<c:forEach var="user" items="${user}">
                        <tr>
                            <th scope="row">${user.id}</th>
                            <td>${user.username}</td>
                            <td>${user.name}</td>
                            <td>${user.email}</td>

                            <td>${user.getNameRole()}</td>
                            <td>${user.getNameActivate()}</td>
                            <td>
                                <% if (role!=1) { %>
                                <a title="Xóa tài khoản" href="RemoveUser?id=${user.id}" class="icon-link">
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
