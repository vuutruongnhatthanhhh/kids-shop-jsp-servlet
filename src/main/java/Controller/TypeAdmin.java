package Controller;

import Dao.ProductDao;
import Model.Product;
import Model.TypeProduct;
import Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TypeAdmin", value = "/TypeAdmin")
public class TypeAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<TypeProduct> type = ProductDao.getAllType();
        User user = (User) request.getSession().getAttribute("user");
        if(user==null || user.getRole()==2){
            response.sendRedirect("errorAccess.jsp");
            return;
        }
        request.setAttribute("type", type);
        request.getRequestDispatcher("AdminWeb/type.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
