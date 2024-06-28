package Controller;

import Dao.ProductDao;
import Model.Product;
import Model.TypeProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Search", value = "/Search")
public class Search extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchTerm = request.getParameter("searchTerm");
        List<Product> productsSearch = ProductDao.SearchProduct(searchTerm);
        List<TypeProduct> typeproduct = ProductDao.getAllType();

        request.setAttribute("typeproduct", typeproduct);
        request.setAttribute("productsSearch", productsSearch);

        request.getRequestDispatcher("searching.jsp").forward(request, response);


    }
}
