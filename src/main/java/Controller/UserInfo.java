package Controller;

import Dao.UserDao;
import Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserInfo", value = "/UserInfo")
public class UserInfo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        String message = (String) request.getAttribute("message");
        if (message != null) {

            request.setAttribute("receivedMessage", message);
        }

            request.setAttribute("user", user);
            request.getRequestDispatcher("user_profile.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
