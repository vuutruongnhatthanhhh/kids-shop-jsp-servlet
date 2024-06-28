<%@ page import="Model.Product" %>
<%@ page import="Dao.ProductDao" %>
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
            <div class="title">Chỉnh sửa thông tin sản phẩm</div>
            <form id="myForm" action="UpdateProductAdmin" method="post" class="row">
                <%
                    int id = (int) request.getAttribute("idP");
                    int id_type = (int) request.getAttribute("id_type");
                    String name = (String) request.getAttribute("name");
                    int discount = (int) request.getAttribute("discount");
                    int price = (int) request.getAttribute("price");
                    String describe = (String) request.getAttribute("describe");

                    String nameType = Product.getNameType(id_type);
                    String imageURL = ProductDao.getImageUrl(id);


                %>
                <div class="form-group col-md-3">
                    <label class="control-label">Mã sản phẩm </label>
                    <input name="idP" class="form-control" type="number" value="<%= id %>" placeholder="" readonly>
                </div>
                <div class="form-group col-md-3">
                    <label class="control-label">Tên sản phẩm</label>
                    <input name="name" class="form-control" type="text" value="<%= name %>">
                </div>

<%--                <div class="form-group  col-md-3">--%>
<%--                    <label class="control-label">Số lượng</label>--%>
<%--                    <input class="form-control" type="number">--%>
<%--                </div>--%>

                <div class="form-group col-md-3">
                    <label class="control-label">Danh mục</label>
                    <select name="type" class="form-control"  >
                        <option value="<%=  id_type %>"> <%=  nameType %></option>
                        <option value="1">Sữa bột cao cấp</option>
                        <option value="2">Bỉm tả khuyến mãi</option>
                        <option value="3">Ăn dặm, dinh dưỡng</option>
                        <option value="4">Vitamin & Sức khỏe</option>
                        <option value="5">Chăm sóc gia đình</option>
                        <option value="6">Đồ dùng mẹ & bé</option>
                        <option value="7">Thời trang & phụ kiện</option>
                        <option value="8">Đồ chơi, học tập</option>

                    </select>
                </div>
                <div class="form-group col-md-3">
                    <label class="control-label">Giá bán</label>
                    <input name="price" class="form-control" type="text" value="<%=  price %>">
                </div>
                <div class="form-group col-md-3">
                    <label class="control-label">Giảm giá (%)</label>
                    <input name="discount" class="form-control" type="number" value="<%=  discount %>">
                </div>
                <div class="form-group col-md-4">
                    <label class="control-label">Ảnh</label>
                    <input name="image" class="form-control" type="text" value="<%=  imageURL %>">
                </div>
                <div class="form-group col-md-12">
                    <label class="control-label">Mô tả sản phẩm</label>
                    <textarea  class="form-control" name="describe" id="mota"><%=  describe %></textarea>
                </div>
            </form>
            <button id="externalButton" class="btn btn-save" type="button">Lưu lại</button>
            <a class="btn btn-cancel" href="ProductAdmin">Hủy bỏ</a>
        </div>
    </div>
</section>
<script src="../bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="../bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="AdminWeb/js/main.js"></script>
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
