package Controller;

import Dao.BillDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CancelBillUser", value = "/CancelBillUser")
public class CancelBillUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        int idBill = Integer.parseInt(id);
        BillDao.cancel(idBill);


        response.sendRedirect(request.getHeader("referer"));

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
