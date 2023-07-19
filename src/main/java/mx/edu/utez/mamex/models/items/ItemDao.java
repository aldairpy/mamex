package mx.edu.utez.mamex.models.items;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ItemDao {
    private Connection connection;

    public ItemDao(Connection connection) {
        this.connection = connection;
    }

    public boolean saveItem(Item item) {
        String query = "INSERT INTO items (id_item, name_item, description_item, available, color, unit_price, " +
                "create_date, update_date, stock, notes) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, item.getId());
            statement.setString(2, item.getName());
            statement.setString(3, item.getDescription());
            statement.setString(4, item.getAvailable());
            statement.setString(5, item.getColor());
            statement.setDouble(6, item.getUnitPrice());
            statement.setDate(7, new java.sql.Date(item.getCreateDate().getTime()));
            statement.setDate(8, new java.sql.Date(item.getUpdateDate().getTime()));
            statement.setInt(9, item.getStock());
            statement.setString(10, item.getNotes());

            int rowsAffected = statement.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateItem(Item item) {
        String query = "UPDATE items SET name_item = ?, description_item = ?, available = ?, color = ?, unit_price = ?, " +
                "update_date = ?, stock = ?, notes = ? WHERE id_item = ?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, item.getName());
            statement.setString(2, item.getDescription());
            statement.setString(3, item.getAvailable());
            statement.setString(4, item.getColor());
            statement.setDouble(5, item.getUnitPrice());
            statement.setDate(6, new java.sql.Date(item.getUpdateDate().getTime()));
            statement.setInt(7, item.getStock());
            statement.setString(8, item.getNotes());
            statement.setInt(9, item.getId());

            int rowsAffected = statement.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deleteItem(int itemId) {
        String query = "DELETE FROM items WHERE id_item = ?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, itemId);
            int rowsAffected = statement.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Item> getAllItems() {
        List<Item> items = new ArrayList<>();
        String query = "SELECT * FROM items";

        try (Statement statement = connection.createStatement()) {
            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {
                Item item = new Item(
                        resultSet.getInt("id_item"),
                        resultSet.getString("name_item"),
                        resultSet.getString("description_item"),
                        resultSet.getString("available"),
                        resultSet.getString("color"),
                        resultSet.getDouble("unit_price"),
                        resultSet.getDate("create_date"),
                        resultSet.getDate("update_date"),
                        resultSet.getInt("stock"),
                        resultSet.getString("notes")
                );

                items.add(item);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return items;
    }
}


