package Controller;

import Dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateType", value = "/UpdateType")
public class UpdateType extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        int idd = Integer.parseInt(id);

        String type =ProductDao.getNameType(idd);

        request.setAttribute("type", type);
        request.setAttribute("id", idd);
        request.getRequestDispatcher("AdminWeb/updateType.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        int idd = Integer.parseInt(id);
        String type = request.getParameter("type");

        ProductDao.updateType(type,idd);
        response.sendRedirect("TypeAdmin");



    }
}
