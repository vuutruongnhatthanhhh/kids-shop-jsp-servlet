<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Quản lý loại sản phẩm</title>
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
      <div class="title">Danh Sách Loại Sản Phẩm</div>
      <div class="row">
        <div class="col-md-12">
          <div class="row element-button">
            <div class="col-sm-2">
              <a class="btn btn-add btn-sm" href="AddType" title="Thêm">
                <i class="fas fa-plus"></i>
                Thêm </a>
            </div>

          </div>
          <table id="table-id" class="table table-hover table-bordered">
            <thead>
            <tr>
              <th scope="col">Mã loại sản phẩm</th>
              <th scope="col">Tên</th>

              <th scope="col">Chức năng</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="type" items="${type}">
              <tr>
                <th scope="row">${type.id}</th>
                <td>${type.name}</td>

                <td>
                  <a title="Chỉnh sửa" href="UpdateType?id=${type.id}" class="icon-link">
                    <i class="icon-wrapper">
                      <i class="fas fa-pen"></i>
                    </i>
                  </a>
                  <a title="Xóa loại sản phẩm" href="RemoveType?id=${type.id}" class="icon-link">
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
  </div>
</section>
<script src="AdminWeb/js/jquery.min.js"></script>
<script src="AdminWeb/js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf8" src="AdminWeb/js/bootstrap.bundle.min.js"></script>
<script>$("#table-id").DataTable();
</script>
</body>
</html>
