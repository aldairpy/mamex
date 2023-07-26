package mx.edu.utez.mamex.models.items;
import mx.edu.utez.mamex.models.items.Item;
import mx.edu.utez.mamex.utils.MySQLConnection;



import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Arrays;

public class ItemDao {
    private Connection conn;

    public ItemDao(Connection conn) {
        this.conn = conn;
    }

    public boolean saveItem(Item item) {
        boolean result = false;
        String query = "INSERT INTO items(name_item, description_item, available, color, unit_price, create_date, update_date, stock, notes) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, item.getName());
            preparedStatement.setString(2, item.getDescription());
            preparedStatement.setString(3, item.getAvailable());
            preparedStatement.setString(4, item.getColor());
            preparedStatement.setDouble(5, item.getUnitPrice());
            preparedStatement.setDate(6, new java.sql.Date(item.getCreateDate().getTime()));
            preparedStatement.setDate(7, new java.sql.Date(item.getUpdateDate().getTime()));
            preparedStatement.setInt(8, item.getStock());
            preparedStatement.setString(9, item.getNotes());

            int affectedRows = preparedStatement.executeUpdate();

            if (affectedRows > 0) {
                try (ResultSet generatedKeys = preparedStatement.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        int itemId = generatedKeys.getInt(1);
                        for (Map.Entry<String, byte[]> entry : item.getImages().entrySet()) {
                            String imageQuery = "INSERT INTO item_images(id_item, image_name, image) VALUES (?, ?, ?)";
                            PreparedStatement imagePreparedStatement = conn.prepareStatement(imageQuery);
                            imagePreparedStatement.setInt(1, itemId);
                            imagePreparedStatement.setString(2, entry.getKey());
                            imagePreparedStatement.setBytes(3, entry.getValue());
                            imagePreparedStatement.executeUpdate();
                        }
                    }
                    result = true;
                }
            }

            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }

    public boolean updateItem(Item item) {
        try {
            PreparedStatement ps = conn.prepareStatement("UPDATE item SET name = ?, description = ?, available = ?, color = ?, unitPrice = ?, createDate = ?, updateDate = ?, stock = ?, notes = ? WHERE id = ?");
            ps.setString(1, item.getName());
            ps.setString(2, item.getDescription());
            ps.setString(3, item.getAvailable());
            ps.setString(4, item.getColor());
            ps.setDouble(5, item.getUnitPrice());
            ps.setDate(6, item.getCreateDate());
            ps.setDate(7, item.getUpdateDate());
            ps.setInt(8, item.getStock());
            ps.setString(9, item.getNotes());
            ps.setInt(10, item.getId());

            if (ps.executeUpdate() > 0) {
                // Convert map to list of byte arrays
                List<byte[]> imagesBytesList = new ArrayList<>(item.getImages().values());
                ItemImageDao imageDao = new ItemImageDao(conn);
                return imageDao.updateImages(item.getId(), imagesBytesList);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }



    public boolean deleteItem(int itemId) {
        String query = "DELETE FROM items WHERE id_item = ?";

        try (PreparedStatement statement = conn.prepareStatement(query)) {
            statement.setInt(1, itemId);
            int rowsAffected = statement.executeUpdate();

            if (rowsAffected > 0) {
                ItemImageDao itemImageDao = new ItemImageDao(conn);
                return itemImageDao.deleteImages(itemId);
            } else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }


    public List<Item> getAllItems() {
        String query = "SELECT * FROM items";
        List<Item> items = new ArrayList<>();

        try {
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            ItemImageDao itemImageDao = new ItemImageDao(conn);

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String available = rs.getString("available");
                String color = rs.getString("color");
                double unitPrice = rs.getDouble("unitPrice");
                Date createDate = rs.getDate("createDate");
                Date updateDate = rs.getDate("updateDate");
                int stock = rs.getInt("stock");
                String notes = rs.getString("notes");

                Map<String, byte[]> images = itemImageDao.getImagesByItemId(id);

                items.add(new Item(id, name, description, available, color, unitPrice, createDate, updateDate, stock, notes, images));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return items;
    }
}


