package Controller;


import Dao.InfoDeliverDao;
import Dao.UserDao;
import Model.InfoDeliver;
import Model.User;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean loginSuccess = UserDao.loginUser(username, password);




            if (loginSuccess) {
                if(UserDao.getNotActivateAccount(username)==0){
                    // Đăng nhập thất bại
                    request.getSession().setAttribute("message2", "Tài khoản chưa được kích hoạt");
                    response.sendRedirect("login.jsp"); // Chuyển hướng đến trang login.jsp
                } else {

                    // Đăng nhập thành công
                    HttpSession session = request.getSession();
                    User user= UserDao.getUserInfo(username);
                    session.setAttribute("user", user);
                    String name = UserDao.getUserName(username);
                    session.setAttribute("name", name);
                    if(user.getRole()==2) {
                        response.sendRedirect("Home"); // Chuyển hướng đến trang welcome.jsp
                    } if (user.getRole()==1 || user.getRole()==0 ){
                        response.sendRedirect("Statistical"); // Chuyển hướng đến trang welcome.jsp
                    }
                }
            } else {
                // Đăng nhập thất bại
                request.getSession().setAttribute("message2", "Đăng nhập thất bại. Vui lòng kiểm tra lại thông tin đăng nhập.");
                response.sendRedirect("login.jsp"); // Chuyển hướng đến trang login.jsp
            }

    }
}
