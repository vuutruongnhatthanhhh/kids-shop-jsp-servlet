package Controller;

import Dao.ProductDao;
import Model.Product;
import Model.TypeProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DiscountProduct", value = "/DiscountProduct")
public class DiscountProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productsDis = ProductDao.getAllDiscountProduct();
        List<TypeProduct> typeproduct = ProductDao.getAllType();


        request.setAttribute("typeproduct", typeproduct);
        request.setAttribute("productsDis", productsDis);

        request.getRequestDispatcher("discountProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
