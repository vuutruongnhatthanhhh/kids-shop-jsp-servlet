package Controller;

import Dao.ProductDao;
import Model.Product;
import Model.TypeProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "NewProduct", value = "/NewProduct")
public class NewProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productsNew = ProductDao.getNewProduct();
        List<TypeProduct> typeproduct = ProductDao.getAllType();


        request.setAttribute("typeproduct", typeproduct);
        request.setAttribute("productsNew", productsNew);

        request.getRequestDispatcher("newProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
