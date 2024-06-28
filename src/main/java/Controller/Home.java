package Controller;

import Dao.ProductDao;
import Model.Product;
import Model.TypeProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Home", value = "/Home")
public class Home extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Model.Product> productsDis = ProductDao.getDiscountProduct();
        List<Model.Product> productsNew = ProductDao.getNewProduct();
        List<TypeProduct> typeproduct = ProductDao.getAllType();


        request.setAttribute("typeproduct", typeproduct);

        // Lưu danh sách sản phẩm và thông tin phân trang vào request
        request.setAttribute("productsDis", productsDis);
        request.setAttribute("productsNew", productsNew);


        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
