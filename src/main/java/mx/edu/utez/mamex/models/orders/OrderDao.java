package mx.edu.utez.mamex.models.orders;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {
    private Connection connection;

    public OrderDao(Connection connection) {
        this.connection = connection;
    }

    public void updateOrderState(int orderId, String newState) throws SQLException {
        String query = "UPDATE orders SET state_order = ?, update_date = ? WHERE id_order = ?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, newState);
            statement.setDate(2, getCurrentDate());
            statement.setInt(3, orderId);
            statement.executeUpdate();
        }
    }

    public boolean deleteOrder(int orderId) {
        String query = "DELETE FROM orders WHERE id_order = ?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, orderId);
            int rowsAffected = statement.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public Order getOrderById(long orderId) {
        String query = "SELECT * FROM orders WHERE id_order = ?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setLong(1, orderId);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                return createOrderFromResultSet(resultSet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public List<Order> getUserOrders(int userId) {
        List<Order> orders = new ArrayList<>();
        String query = "SELECT * FROM orders WHERE fk_id_user = ?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, userId);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Order order = createOrderFromResultSet(resultSet);
                orders.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return orders;
    }

    private Order createOrderFromResultSet(ResultSet resultSet) throws SQLException {
        int id = resultSet.getInt("id_order");
        String state = resultSet.getString("state_order");
        Date date = resultSet.getDate("date_order");
        Date updateDate = resultSet.getDate("update_date");
        int userId = resultSet.getInt("fk_id_user");

        return new Order(id, state, date, updateDate, userId);
    }

    private Date getCurrentDate() {
        java.util.Date currentDate = new java.util.Date();
        return new Date(currentDate.getTime());
    }
}




