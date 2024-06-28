<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 22/10/2023
  Time: 6:44 pm
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="hero__search">
    <div class="hero__search__form">
        <form action="Search" method="post">
            <div class="hero__search__categories">
                Tất cả sản phẩm
                <span class="arrow_carrot-down"></span>
            </div>
            <input type="text" placeholder="Bạn cần gì cho ngày hôm nay?" name="searchTerm">
            <button type="submit" class="site-btn">Tìm kiếm</button>
        </form>
    </div>
    <div class="hero__search__phone">
        <div class="hero__search__phone__icon">
            <i class="fa fa-phone"></i>
        </div>
        <div class="hero__search__phone__text">
            <h5>078 6191 721</h5>
            <span>Hỗ trợ 24/7</span>
        </div>
    </div>
</div>

</body>
</html>
