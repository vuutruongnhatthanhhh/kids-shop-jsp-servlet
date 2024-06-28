package Controller;

import Dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpToShop", value = "/UpToShop")
public class UpToShop extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        int idP = Integer.parseInt(id);
        String name = ProductDao.getNameProduct(idP);
        int amount_shop = ProductDao.getAmountShop(idP);
        int amount_storage = ProductDao.getAmountStorage(idP);


        request.setAttribute("idP", idP);
        request.setAttribute("name", name);
        request.setAttribute("amount_shop", amount_shop);
        request.setAttribute("amount_storage", amount_storage);

        request.getRequestDispatcher("AdminWeb/UpToShop.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
