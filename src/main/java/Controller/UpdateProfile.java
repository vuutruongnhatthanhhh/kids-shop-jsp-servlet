package Controller;

import Dao.InfoDeliverDao;
import Dao.UserDao;
import Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateProfile", value = "/UpdateProfile")
public class UpdateProfile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String province = request.getParameter("province");
        String district = request.getParameter("district");
        String ward = request.getParameter("ward");
        String address = request.getParameter("address");
        try {
            UserDao.updateInfoUser(name, email, user.getId());
            InfoDeliverDao.updateInfoDeliver(phone, province, district, ward, address, user.getId());

            User user2= UserDao.getUserInfo(user.getUsername());
            session.setAttribute("user", user2);

            response.sendRedirect("UserInfo");
        } catch (Exception e) {
            request.setAttribute("message", "Số điện thoại không hợp lệ");

            response.sendRedirect("UserInfo");

        }




    }
}
