package Controller;

import Dao.BillDao;
import Model.Bill;
import Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrderStatus", value = "/OrderStatus")
public class OrderStatus extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");

        List<Bill> br = BillDao.RecentBill(user.getId());
        List<Bill> bco = BillDao.ConfirmBill(user.getId());
        List<Bill> bs = BillDao.ShipBill(user.getId());
        List<Bill> bd = BillDao.DeliveredBill(user.getId());
        List<Bill> bc = BillDao.CancelBill(user.getId());


        request.setAttribute("br", br);
        request.setAttribute("bco", bco);
        request.setAttribute("bs", bs);
        request.setAttribute("bd", bd);
        request.setAttribute("bc", bc);
        request.getRequestDispatcher("orderStatus.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
