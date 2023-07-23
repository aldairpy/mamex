package mx.edu.utez.mamex.controllers.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.edu.utez.mamex.models.items.Item;
import mx.edu.utez.mamex.models.items.ItemDao;
import mx.edu.utez.mamex.models.user.UserDao;
import mx.edu.utez.mamex.models.transactions.TransactionDao;
import mx.edu.utez.mamex.utils.MySQLConnection;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(name = "admin", urlPatterns = {"/admin/inicio", "/admin/crear_producto", "/admin/products"})
public class ServletAdmin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "inicio";
        }
        switch (action) {
            case "inicio":
                loadInicioData(request, response);
                break;
            case "crear_producto":
                response.sendRedirect(request.getContextPath() + "/crear_producto.jsp");
                break;
            case "products":
                response.sendRedirect(request.getContextPath() + "/views/admin/products.jsp");
                break;
            default:
                loadInicioData(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
        if ("/admin/crear_producto".equals(action)) {
            createProduct(request, response);
        }
    }

    private void loadInicioData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao(new MySQLConnection().connect());
        TransactionDao transactionDao = new TransactionDao(new MySQLConnection().connect());

        int activeUsersCount = userDao.getActiveUsersCount();
        int totalUsersCount = userDao.getTotalUsersCount();
        double totalEarnings = transactionDao.getTotalEarnings();

        request.setAttribute("activeUsersCount", activeUsersCount);
        request.setAttribute("totalUsersCount", totalUsersCount);
        request.setAttribute("totalEarnings", totalEarnings);

        request.getRequestDispatcher("/inicio.jsp").forward(request, response);
    }

    private void loadProductsData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ItemDao itemDao = new ItemDao(new MySQLConnection().connect());
        List<Item> items = itemDao.getAllItems(); // Asegúrate de tener este método en tu DAO

        request.setAttribute("items", items);
        request.getRequestDispatcher("/products.jsp").forward(request, response);
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String available = request.getParameter("available");
        String color = request.getParameter("color");
        double unitPrice = Double.parseDouble(request.getParameter("unitPrice"));
        String createDateStr = request.getParameter("createDate");
        String updateDateStr = request.getParameter("updateDate");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date createDate;
        Date updateDate;

        try {
            createDate = dateFormat.parse(createDateStr);
            updateDate = dateFormat.parse(updateDateStr);
        } catch (ParseException e) {
            response.sendRedirect(request.getContextPath() + "/crear_producto.jsp?result=error");
            return;
        }

        int stock = Integer.parseInt(request.getParameter("stock"));
        String notes = request.getParameter("notes");

        Item item = new Item(0, name, description, available, color, unitPrice, createDate, updateDate, stock, notes);
        ItemDao itemDao = new ItemDao(new MySQLConnection().connect());
        boolean result = itemDao.saveItem(item);

        if (result) {
            response.sendRedirect(request.getContextPath() + "/products.jsp?result=success");
        } else {
            response.sendRedirect(request.getContextPath() + "/crear_producto.jsp?result=error");
        }
    }
}







