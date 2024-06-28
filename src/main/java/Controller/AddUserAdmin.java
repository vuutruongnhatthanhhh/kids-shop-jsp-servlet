package Controller;

import Dao.InfoDeliverDao;
import Dao.UserDao;
import Service.MD5Hash;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddUserAdmin", value = "/AddUserAdmin")
public class AddUserAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = UserDao.getNewiduserAdmin();

        request.setAttribute("id", id);
        request.getRequestDispatcher("AdminWeb/addUser.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int id = UserDao.getNewiduserAdmin();
        String name = request.getParameter("name");
        int role = Integer.parseInt(request.getParameter("role"));
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String passwd = request.getParameter("passwd");

        InfoDeliverDao.addInfoDeliver(id);
        UserDao.addDB2(name,username, MD5Hash.hashPassword(passwd),email,role);

        response.sendRedirect("UserAdmin");



    }
}
