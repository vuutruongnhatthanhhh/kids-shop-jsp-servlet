package Controller;

import Dao.BillDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeliveredBillAdmin", value = "/DeliveredBillAdmin")
public class DeliveredBillAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        int idBill = Integer.parseInt(id);
        BillDao.delivered(idBill);


        response.sendRedirect("BillAdmin?tab=tab4");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
