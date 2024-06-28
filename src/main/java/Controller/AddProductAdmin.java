package Controller;

import Dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddProductAdmin", value = "/AddProductAdmin")
public class AddProductAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int newID = ProductDao.getnewId();

        request.setAttribute("id", newID);
        request.getRequestDispatcher("AdminWeb/addProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int newID = ProductDao.getnewId();
        int idP = Integer.parseInt(request.getParameter("idP"));
        String name = request.getParameter("name");
        int id_type = Integer.parseInt(request.getParameter("type"));
        int price = Integer.parseInt(request.getParameter("price"));
        int discount = Integer.parseInt(request.getParameter("discount"));
        String image = request.getParameter("image");
        String describe = request.getParameter("describe");
        int import_price = Integer.parseInt(request.getParameter("import_price"));
        int amount = Integer.parseInt(request.getParameter("amount"));
        int vendor = Integer.parseInt(request.getParameter("vendor"));

        ProductDao.addProduct(id_type,name,discount,price,describe,0,amount,vendor,import_price);
        ProductDao.addIMGProduct(image,newID);

        response.sendRedirect("StorageAdmin");
    }
}
