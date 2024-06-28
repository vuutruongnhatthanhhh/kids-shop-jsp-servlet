package Controller;

import Dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpAmountToStorage", value = "/UpAmountToStorage")
public class UpAmountToStorage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int idP = Integer.parseInt(request.getParameter("idP"));
        String name = request.getParameter("name");

        int amount_storage = Integer.parseInt(request.getParameter("amount_storage"));
        String amount_upS = request.getParameter("amount_up");


        boolean shouldRedirect = false;



        if (amount_upS.isEmpty() || amount_upS == null) {
            request.getSession().setAttribute("message", "Vui lòng nhập số lượng nhập thêm");
            shouldRedirect = true;
        }

        if (!shouldRedirect) {
            int amount_up = Integer.parseInt(amount_upS);
            ProductDao.upAmountStorage(amount_up, idP);

        }

        response.sendRedirect(request.getHeader("referer"));
    }
}
