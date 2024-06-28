package Controller;

import Dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpToStorage", value = "/UpToStorage")
public class UpToStorage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        int idP = Integer.parseInt(id);
        String name = ProductDao.getNameProduct(idP);
        int amount_shop = ProductDao.getAmountShop(idP);
        int amount_storage = ProductDao.getAmountStorage(idP);
        int id_vendor = ProductDao.getID_vendor(idP);
        String rs="";
        if(id_vendor==1){
            rs="Concung";
        }
        if(id_vendor==2){
            rs="Kho mẹ bé Thiên An";
        }
        if(id_vendor==3){
            rs="Sozo";
        }
        if(id_vendor==4){
            rs="Chaang";
        }
        int price = ProductDao.getPrice(idP);
        int import_price = ProductDao.getImport_price(idP);

        request.setAttribute("price", price);
        request.setAttribute("import_price", import_price);
        request.setAttribute("idP", idP);
        request.setAttribute("name", name);
        request.setAttribute("amount_shop", amount_shop);
        request.setAttribute("amount_storage", amount_storage);
        request.setAttribute("vendor", rs);

        request.getRequestDispatcher("AdminWeb/UpToStorage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
