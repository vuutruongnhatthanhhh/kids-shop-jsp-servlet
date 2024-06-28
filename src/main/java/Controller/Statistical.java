package Controller;

import Dao.BillDao;
import Dao.ProductDao;
import Model.Bill;
import Model.Product;
import Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Statistical", value = "/Statistical")
public class Statistical extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");

        int totalBill = BillDao.totalBill();
        int totalBillCancel = BillDao.totalBillCancel();
        int totalProductSoldOut = BillDao.totalProductSoldOut();
        int totalIncome = BillDao.totalIncome();
        List<Bill> br = BillDao.RecentBillLimit();
        List<Product> hot = ProductDao.getHotSelect();

        request.setAttribute("hot", hot);
        request.setAttribute("br", br);
        request.setAttribute("totalIncome", totalIncome);
        request.setAttribute("totalProductSoldOut", totalProductSoldOut);
        request.setAttribute("totalBillCancel", totalBillCancel);
        request.setAttribute("totalBill", totalBill);


        if(user==null || user.getRole()==2){
            response.sendRedirect("errorAccess.jsp");
            return;
        }


        request.getRequestDispatcher("AdminWeb/index.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
