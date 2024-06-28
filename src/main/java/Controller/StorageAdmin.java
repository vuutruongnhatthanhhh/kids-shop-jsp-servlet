package Controller;

import Dao.ProductDao;
import Model.Product;
import Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "StorageAdmin", value = "/StorageAdmin")
public class StorageAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = ProductDao.getAllProduct();
        User user = (User) request.getSession().getAttribute("user");
        if(user==null || user.getRole()==2){
            response.sendRedirect("errorAccess.jsp");
            return;
        }

        request.setAttribute("user", user);
        request.setAttribute("products", products);
        request.getRequestDispatcher("AdminWeb/storage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
