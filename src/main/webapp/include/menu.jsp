<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 22/10/2023
  Time: 6:17 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="hero__categories">
  <div class="hero__categories__all">
    <i class="fa fa-bars"></i>
    <span id="category">Danh mục</span>
  </div>
  <ul>
<%--    <li><a href="product_type1.jsp">Sữa bột cao cấp</a></li>--%>
<%--    <li><a href="product_type2.jsp">Bỉm tã khuyến mãi</a></li>--%>
<%--    <li><a href="#">Sữa tươi các loại</a></li>--%>
<%--    <li><a href="#">Ăn dặm, dinh dưỡng</a></li>--%>
<%--    <li><a href="#">Vitamin & sức khỏe</a></li>--%>
<%--    <li><a href="#">Chăm sóc gia đình</a></li>--%>
<%--    <li><a href="#">Đồ dùng mẹ & bé</a></li>--%>
<%--    <li><a href="#">Thời trang & Phụ kiện</a></li>--%>
<%--    <li>--%>
<%--      <a href="#" >Đồ chơi, học tập</a>--%>

<%--    </li>--%>
  <c:forEach var="typeproduct" items="${typeproduct}">
    <li><a href="ProductByCategory?categoryId=${typeproduct.id}">${typeproduct.name} </a></li>
  </c:forEach>

    <!-- <li><a href="#">Oatmeal</a></li>
    <li><a href="#">Fresh Bananas</a></li> -->
  </ul>
</div>
<script>



</script>
</body>

</html>
