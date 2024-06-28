package Controller;

import Dao.ProductDao;
import Model.Product;
import Model.TypeProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductByCategory", value = "/ProductByCategory")
public class ProductByCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productsPerPage = 20;

        String categoryId = request.getParameter("categoryId");


        int categoryIdInt = Integer.parseInt(categoryId);

        List<Product> products = ProductDao.getProductByCategory(categoryIdInt);

        // Lấy số trang từ tham số yêu cầu (nếu không có, mặc định là trang đầu tiên)
         int page = 1;
        if (request.getParameter("page") != null) {
            page = Integer.parseInt(request.getParameter("page"));
        }

        // Tính chỉ số bắt đầu của sản phẩm trên trang hiện tại
        int startIndex = (page - 1) * productsPerPage;
        // Tính chỉ số kết thúc của sản phẩm trên trang hiện tại
        int endIndex = Math.min(startIndex + productsPerPage, products.size());

        // Lấy danh sách sản phẩm cho trang hiện tại
        List<Model.Product> productsOnPage = products.subList(startIndex, endIndex);

        List<TypeProduct> typeproduct = ProductDao.getAllType();









        // Đặt danh sách sản phẩm vào thuộc tính của request
        request.setAttribute("categoryId", categoryIdInt);
        request.setAttribute("typeproduct", typeproduct);
        request.setAttribute("products", productsOnPage);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages", (int) Math.ceil((double) products.size() / (double) productsPerPage));

        // Chuyển hướng đến trang hiển thị sản phẩm
        RequestDispatcher dispatcher = request.getRequestDispatcher("typeproduct.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
