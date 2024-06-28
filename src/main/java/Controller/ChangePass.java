package Controller;

import Dao.UserDao;
import Model.User;
import Service.MD5Hash;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ChangePass", value = "/ChangePass")
public class ChangePass extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String oldpassword = request.getParameter("oldpassword");
        String newpassword = request.getParameter("newpassword");
        String re_newpassword = request.getParameter("re_newpassword");

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if(MD5Hash.hashPassword(oldpassword).equals( UserDao.getPasswd(user.getId()))){
            if(MD5Hash.hashPassword(oldpassword).equals(MD5Hash.hashPassword(newpassword))){
                request.getSession().setAttribute("message", "Mật khẩu hiện tại và mật khẩu mới giống nhau");
                response.sendRedirect("changePassword.jsp");
            } else {
                if(newpassword.equals(re_newpassword)){
                    UserDao.changePassword(MD5Hash.hashPassword(newpassword),user.getId());
                    request.getSession().setAttribute("message", "Đổi mật khẩu thành công");
                    response.sendRedirect("changePassword.jsp");
                }else {
                    request.getSession().setAttribute("message", "Mật khẩu nhập lại không trùng khớp");
                    response.sendRedirect("changePassword.jsp");
                }
            }

        }else {
            request.getSession().setAttribute("message", "Mật khẩu hiện tại không đúng");
            response.sendRedirect("changePassword.jsp");
        }
    }
}
