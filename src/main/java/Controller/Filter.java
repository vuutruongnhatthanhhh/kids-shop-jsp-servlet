package Controller;

import Dao.ProductDao;
import Model.Product;
import Model.TypeProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Filter", value = "/Filter")
public class Filter extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sortingOption = request.getParameter("sortingOption");


        List<Product> filteredResults = ProductDao.FilterProduct(sortingOption);

        List<TypeProduct> typeproduct = ProductDao.getAllType();

        request.setAttribute("sortingOption", sortingOption);
        request.setAttribute("products", filteredResults);
        request.setAttribute("typeproduct", typeproduct);


        // Chuyển hướng về trang kết quả bộ lọc
        request.getRequestDispatcher("product1.jsp").forward(request, response);

    }
}
