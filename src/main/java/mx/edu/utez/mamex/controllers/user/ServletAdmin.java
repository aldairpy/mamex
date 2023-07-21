package mx.edu.utez.mamex.controllers.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.edu.utez.mamex.models.user.User;
import mx.edu.utez.mamex.models.user.DAOUser;
import mx.edu.utez.mamex.models.orders.Order;
import mx.edu.utez.mamex.models.orders.OrderDao;
import mx.edu.utez.mamex.models.items.ItemDao;
import mx.edu.utez.mamex.models.items.Item;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.sql.SQLException;
import mx.edu.utez.mamex.utils.MySQLConnection;



/*@WebServlet(name = "admin", urlPatterns = {"/admin/mamex", "/admin/gestionar_usuarios", "/admin/gestionar_productos", "/admin/gestionar_pedidos"})
public class ServletAdmin extends HttpServlet {

    /*@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();

        switch (action) {
            case "/admin/mamex":
                break;
            case "/admin/gestionar_usuarios":
                break;
            case "/admin/gestionar_productos":
                break;
            case "/admin/gestionar_pedidos":
                break;
            default:
                response.sendRedirect(request.getContextPath() + "/admin/mamex");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();

        switch (action) {
            case "/admin/gestionar_usuarios":
                manageUsers(request, response);
                break;
            case "/admin/gestionar_productos":
                manageProducts(request, response);
                break;
            case "/admin/gestionar_pedidos":
                manageOrders(request, response);
                break;
            default:
                response.sendRedirect(request.getContextPath() + "/admin/mamex");
        }
    }

    private void manageUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        long userId = Long.parseLong(request.getParameter("userId"));

        DAOUser userDao = new DAOUser();
        User user = userDao.getUserById(userId);

        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/admin/gestionar_usuarios?result=error");
            return;
        }

        switch (action) {
            case "block":
                user.setBlocked(true);
                userDao.update(user);
                break;
            case "unblock":
                user.setBlocked(false);
                userDao.update(user);
                break;
            case "delete":
                userDao.delete(userId);
                break;
            default:
                response.sendRedirect(request.getContextPath() + "/admin/gestionar_usuarios");
                return;
        }

        response.sendRedirect(request.getContextPath() + "/admin/gestionar_usuarios?result=success");
    }

    private void manageProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "create":
                createProduct(request, response);
                break;
            case "edit":
                editProduct(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            default:
                response.sendRedirect(request.getContextPath() + "/admin/gestionar_productos");
        }
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
            response.sendRedirect(request.getContextPath() + "/admin/gestionar_productos?result=error");
            return;
        }

        int stock = Integer.parseInt(request.getParameter("stock"));
        String notes = request.getParameter("notes");

        Item item = new Item(0, name, description, available, color, unitPrice, createDate, updateDate, stock, notes);
        ItemDao itemDao = new ItemDao();
        boolean result = itemDao.saveItem(item);

        if (result) {
            response.sendRedirect(request.getContextPath() + "/admin/gestionar_productos?result=success");
        } else {
            response.sendRedirect(request.getContextPath() + "/admin/gestionar_productos?result=error");
        }
    }

    private void editProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        Item item = new Item(productId, name, description, "", "", 0, null, null, 0, "");
        ItemDao itemDao = new ItemDao();
        boolean result = itemDao.updateItem(item);

        if (result) {
            response.sendRedirect(request.getContextPath() + "/admin/gestionar_productos?result=success");
        } else {
            response.sendRedirect(request.getContextPath() + "/admin/gestionar_productos?result=error");
        }
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));

        ItemDao itemDao = new ItemDao();
        boolean result = itemDao.deleteItem(productId);

        if (result) {
            response.sendRedirect(request.getContextPath() + "/admin/gestionar_productos?result=success");
        } else {
            response.sendRedirect(request.getContextPath() + "/admin/gestionar_productos?result=error");
        }
    }

    private void manageOrders(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int orderId = Integer.parseInt(request.getParameter("orderId"));

        OrderDao orderDao = new OrderDao(new MySQLConnection().connect());
        Order order = orderDao.getOrderById(orderId);

        if (order == null) {
            response.sendRedirect(request.getContextPath() + "/admin/gestionar_pedidos?result=error");
            return;
        }

        switch (action) {
            case "updateStatus":
                String newStatus = request.getParameter("status");
                order.setState(newStatus);
                try {
                    orderDao.updateOrderState(orderId, newStatus);
                    response.sendRedirect(request.getContextPath() + "/admin/gestionar_pedidos?result=success");
                } catch (SQLException e) {
                    e.printStackTrace();
                    response.sendRedirect(request.getContextPath() + "/admin/gestionar_pedidos?result=error");
                }
                break;
            case "delete":
                boolean deleteResult = orderDao.deleteOrder(orderId);
                if (deleteResult) {
                    response.sendRedirect(request.getContextPath() + "/admin/gestionar_pedidos?result=success");
                } else {
                    response.sendRedirect(request.getContextPath() + "/admin/gestionar_pedidos?result=error");
                }
                break;
            default:
                response.sendRedirect(request.getContextPath() + "/admin/gestionar_pedidos");
                break;
        }
    }*/
}






