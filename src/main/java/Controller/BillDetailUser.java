package Controller;

import Dao.BillDetailDao;
import Model.BillDetail;
import Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@WebServlet(name = "BillDetailUser", value = "/BillDetailUser")
public class BillDetailUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        User user = (User) request.getSession().getAttribute("user");
        int idBill = Integer.parseInt(id);
        List<BillDetail> bd = BillDetailDao.getBillDetail(idBill);
        double grandTotal = BillDetailDao.getgrandTotal(idBill);
        String name = BillDetailDao.getNameUser(user.getId());
        int idInfo = BillDetailDao.getIdInfo(idBill);
        String phone = BillDetailDao.getPhone(idInfo);
        Date date = BillDetailDao.getDate(idBill);
        String address = BillDetailDao.getAddress(idInfo);
        String ward = BillDetailDao.getWard(idInfo);
        String district = BillDetailDao.getDistrict(idInfo);
        String province = BillDetailDao.getProvince(idInfo);
        int status = BillDetailDao.getstatusBill(idBill);


        request.setAttribute("status", status);
        request.setAttribute("idbill", idBill);
        request.setAttribute("bd", bd);
        request.setAttribute("grandTotal", grandTotal);
        request.setAttribute("name", name);
        request.setAttribute("phone", phone);
        request.setAttribute("date", date);
        request.setAttribute("address", address);
        request.setAttribute("ward", ward);
        request.setAttribute("district", district);
        request.setAttribute("province", province);
        request.getRequestDispatcher("bill_detail_user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
