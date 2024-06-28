<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="AdminWeb/css/all.min.css">
    <link rel="stylesheet" href="AdminWeb/css/style.css">
    <link rel="stylesheet" href="AdminWeb/css/product.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<%@include file="include/menu.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="manager-product">
            <div class="title">Thêm Tài Khoản</div>
            <form  id="myForm" action="AddUserAdmin" method="post" class="row">
                <div class="form-group col-md-4">
                    <label class="control-label">Mã tài khoản </label>
                    <%
                        int id = (int) request.getAttribute("id");
                    %>
                    <input class="form-control" type="number" placeholder="" value="<%= id %>" readonly>
                </div>
                <div class="form-group col-md-4">
                    <label class="control-label">Tên người dùng</label>
                    <input name="name" class="form-control" type="text">
                </div>
                <div class="form-group col-md-4 ">
                    <label class="control-label">Phân quyền</label>
                    <select name="role" class="form-control">
                        <option>-- Chọn quyền --</option>
                        <option value="0">Admin</option>
                        <option value="1">Mod</option>
                        <option value="2">User</option>
                    </select>
                </div>
                <div class="form-group col-md-6 ">
                    <label class="control-label">Email</label>
                    <input name="email" class="form-control" type="email">
                </div>
                <div class="form-group col-md-6">
                    <label class="control-label">Tên tài khoản</label>
                    <input name="username" class="form-control" type="text">
                </div>
                <div class="form-group col-md-6">
                    <label class="control-label">Mật khẩu</label>
                    <input name="passwd" class="form-control" type="password">
                </div>



            </form>
            <button id="externalButton" class="btn btn-save" >Lưu lại</button>
            <a class="btn btn-cancel" href="user.jsp">Hủy bỏ</a>

        </div>
    </div>
</section>
<script src="AdminWeb/js/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="AdminWeb/js/bootstrap.bundle.min.js"></script>
<script src="AdminWeb/js/main.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Bắt sự kiện click cho nút ở ngoài form
        document.getElementById("externalButton").addEventListener("click", function () {
            // Gọi hàm submitForm() khi nút được nhấn
            submitForm();
        });
    });

    // Hàm để gửi form
    function submitForm() {
        // Lấy đối tượng form bằng ID
        var form = document.getElementById("myForm");

        // Gửi form
        form.submit();
    }
</script>
</body>
</html>
