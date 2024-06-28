package Controller;

import Dao.BillDao;
import Model.Bill;
import Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BillAdmin", value = "/BillAdmin")
public class BillAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Bill> br = BillDao.RecentBill();
        List<Bill> bco = BillDao.ConfirmBill();
        List<Bill> bs = BillDao.ShipBill();
        List<Bill> bd = BillDao.DeliveredBill();
        List<Bill> bc = BillDao.CancelBill();

        request.setAttribute("br", br);
        request.setAttribute("bco", bco);
        request.setAttribute("bs", bs);
        request.setAttribute("bd", bd);
        request.setAttribute("bc", bc);
        User user = (User) request.getSession().getAttribute("user");
        if(user==null || user.getRole()==2){
            response.sendRedirect("errorAccess.jsp");
            return;
        }

        request.getRequestDispatcher("AdminWeb/checkout.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
