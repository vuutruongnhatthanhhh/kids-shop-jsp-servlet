package Controller;

import Dao.InfoDeliverDao;
import Dao.UserDao;
import Service.EmailSender;
import Service.OTPGenerator;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class    Register extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
//        lấy dữ liệu từ form để nó là tiếng việt
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String confirmPassword = request.getParameter("confirmPassword");


        if (confirmPassword == null || !confirmPassword.equals(password)) {
            request.getSession().setAttribute("message", "Mật khẩu nhập lại không trùng khớp");

            // Chuyển hướng đến trang jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
            dispatcher.forward(request, response);
        } else {
            if(UserDao.isUsernameExists(username)){
                request.getSession().setAttribute("message", "Tên đăng nhập đã được sử dụng");

                // Chuyển hướng đến trang jsp
                RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
                dispatcher.forward(request, response);
            } else {

                boolean registrationSuccess = UserDao.registerUser(name, username, password, email);
                int userid = UserDao.getiduser(username);
                InfoDeliverDao.addInfoDeliver(userid);
                if (registrationSuccess) {
                    String otp = OTPGenerator.generateOTP();
                    EmailSender.sendEmail(email, "Nhập OTP này để kích hoạt tài khoản", "Mã OTP: " + otp);
                    request.getSession().setAttribute("otp", otp);
                    request.getSession().setAttribute("username", username);
//                    // Thêm thông báo thành công vào session
//                    request.getSession().setAttribute("message", "Đăng ký thành công");

                    // Chuyển hướng đến trang jsp
                    response.sendRedirect("enterOTP.jsp");
                } else {
                    request.getSession().setAttribute("message", "Lỗi không xác định");

                    // Chuyển hướng đến trang jsp
                    RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
                    dispatcher.forward(request, response);

                }

            }
        }
    }
}


