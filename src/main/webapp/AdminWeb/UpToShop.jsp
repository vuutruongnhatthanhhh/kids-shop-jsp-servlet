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
      <div class="title">Nhập số lượng hàng cần chuyển từ kho lên</div>
      <%
        int id = (int) request.getAttribute("idP");

        String name = (String) request.getAttribute("name");
        int amount_shop = (int) request.getAttribute("amount_shop");
        int amount_storage = (int) request.getAttribute("amount_storage");




      %>
      <form id="myForm" action="UpAmountToShop" method="post" class="row">

        <div class="form-group col-md-3">
          <label class="control-label">Mã sản phẩm </label>
          <input name="idP" class="form-control" type="number" value="<%= id %>" placeholder="" readonly>
        </div>
        <div class="form-group col-md-3">
          <label class="control-label">Tên sản phẩm </label>
          <input name="name" class="form-control" type="text" value="<%= name %>" placeholder="" readonly>
        </div>
        <div class="form-group col-md-3">
          <label class="control-label">Số lượng trong cửa hàng </label>
          <input name="amount_shop" class="form-control" type="number" value="<%= amount_shop %>" placeholder="" readonly>
        </div>
        <div class="form-group col-md-3">
          <label class="control-label">Số lượng hàng trong kho </label>
          <input name="amount_storage" class="form-control" type="number" value="<%= amount_storage %>" placeholder="" readonly>
        </div>
        <div class="form-group col-md-4">
          <label class="control-label">Nhập số lượng cần chuyển từ kho lên</label>
          <input name="amount_up" class="form-control" type="number" value="">
        </div>
        <%
          String message = (String) request.getSession().getAttribute("message");
          if (message != null && !message.isEmpty()) {
        %>
        <p style="color: red; margin-top: 37px;"> <%= message %> </p>
        <%
            // Đặt lại giá trị message sau khi đã hiển thị
            request.getSession().removeAttribute("message");
          }
        %>
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
