package Controller;

import Dao.BillDao;
import Dao.BillDetailDao;
import Dao.InfoDeliverDao;
import Dao.UserDao;
import Model.Cart;
import Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Checkout", value = "/Checkout")
public class Checkout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String province = request.getParameter("province");
        String district = request.getParameter("district");
        String ward = request.getParameter("ward");

        String address = request.getParameter("address");



    InfoDeliverDao.addInfoDeliver2(user.getId(), phone, province, district, ward, address);

                 int idinfo = InfoDeliverDao.getNewIDInfo();
            BillDao.addDB(user.getId(), idinfo,cart.getTotalPrice()+30000) ;
            int idbill = BillDao.getNewIDBill();
            BillDetailDao.addDB(cart.getItems(),idbill);


            request.getSession().removeAttribute("cart");
            request.getSession().removeAttribute("item");
            response.sendRedirect("Home");

    }
}
