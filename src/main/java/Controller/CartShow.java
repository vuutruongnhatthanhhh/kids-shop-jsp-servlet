package Controller;

import Dao.ProductDao;
import Model.Cart;
import Model.TypeProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CartShow", value = "/CartShow")
public class CartShow extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<TypeProduct> typeproduct = ProductDao.getAllType();





        request.setAttribute("typeproduct", typeproduct);


            // Giỏ hàng có sản phẩm, chuyển hướng hoặc hiển thị thông tin giỏ hàng
            request.getRequestDispatcher("cart.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
