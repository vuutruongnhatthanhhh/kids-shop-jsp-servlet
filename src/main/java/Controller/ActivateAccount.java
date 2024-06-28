package Controller;

import Dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ActivateAccountServlet", value = "/ActivateAccountServlet")
public class ActivateAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String otp = request.getParameter("otp");
        String username = request.getParameter("username");
        String enterOTP = request.getParameter("enterOTP");
        if(otp.equals(enterOTP)) {
            UserDao.updateActivateAccount(username);
            request.getSession().setAttribute("message", "Kích hoạt tài khoản thành công");
            response.sendRedirect("login.jsp");
        } else {
            request.getSession().setAttribute("message", "Sai mã OTP");
            response.sendRedirect("enterOTP.jsp");
        }
    }
}
