package Controller;

import Dao.ProductDao;
import Dao.UserDao;
import Model.Product;
import Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductAdmin", value = "/ProductAdmin")
public class ProductAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = ProductDao.getAllProduct();
        User user = (User) request.getSession().getAttribute("user");
        if(user==null || user.getRole()==2){
            response.sendRedirect("errorAccess.jsp");
            return;
        }
        request.setAttribute("products", products);
        request.getRequestDispatcher("AdminWeb/product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
