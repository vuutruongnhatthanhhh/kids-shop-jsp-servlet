package Controller;

import Dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateProductAdmin", value = "/UpdateProductAdmin")
public class UpdateProductAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        int idP = Integer.parseInt(id);
        int id_type = ProductDao.getIdType(idP);
        String name = ProductDao.getNameProduct(idP);
        int discount = ProductDao.getDiscount(idP);
        int price = ProductDao.getPrice(idP);
        String describe = ProductDao.getDescribe(idP);



        request.setAttribute("idP", idP);
        request.setAttribute("id_type", id_type);
        request.setAttribute("name", name);
        request.setAttribute("discount", discount);
        request.setAttribute("price", price);
        request.setAttribute("describe", describe);
        request.getRequestDispatcher("AdminWeb/updateProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int idP = Integer.parseInt(request.getParameter("idP"));
        String name = request.getParameter("name");
         int id_type = Integer.parseInt(request.getParameter("type"));
        int price = Integer.parseInt(request.getParameter("price"));
        int discount = Integer.parseInt(request.getParameter("discount"));
        String image = request.getParameter("image");
        String describe = request.getParameter("describe");


        ProductDao.updateProduct(id_type,name,discount,price,describe,idP);
        ProductDao.updateIMGProduct(image,idP);

        response.sendRedirect("ProductAdmin");





    }
}
