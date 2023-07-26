package mx.edu.utez.mamex.models.items;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Blob;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;


public class ItemImageDao {

    private Connection conn;

    public ItemImageDao(Connection conn) {
        this.conn = conn;
    }

    public boolean saveImages(int itemId, List<byte[]> images) {
        String query = "INSERT INTO item_images (item_id, image) VALUES (?, ?)";
        try (PreparedStatement statement = conn.prepareStatement(query)) {
            for (byte[] image : images) {
                statement.setInt(1, itemId);
                statement.setBytes(2, image);
                statement.addBatch();
            }
            statement.executeBatch();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateImages(int itemId, List<byte[]> images) {
        String deleteQuery = "DELETE FROM item_images WHERE item_id = ?";
        try (PreparedStatement deleteStatement = conn.prepareStatement(deleteQuery)) {
            deleteStatement.setInt(1, itemId);
            deleteStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

        String insertQuery = "INSERT INTO item_images (item_id, image) VALUES (?, ?)";
        try (PreparedStatement insertStatement = conn.prepareStatement(insertQuery)) {
            for (byte[] image : images) {
                insertStatement.setInt(1, itemId);
                insertStatement.setBytes(2, image);
                insertStatement.addBatch();
            }
            insertStatement.executeBatch();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deleteImages(int itemId) {
        String query = "DELETE FROM item_images WHERE item_id = ?";
        try (PreparedStatement statement = conn.prepareStatement(query)) {
            statement.setInt(1, itemId);
            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public Map<String, byte[]> getImagesByItemId(int itemId) {
        String query = "SELECT * FROM images WHERE item_id = ?";
        Map<String, byte[]> imagesMap = new HashMap<>();

        try {
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, itemId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String imageName = rs.getString("image_name");
                byte[] imageData = rs.getBytes("image_data");
                imagesMap.put(imageName, imageData);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return imagesMap;
    }


    public List<byte[]> getImages(int itemId) {
        List<byte[]> images = new ArrayList<>();
        String query = "SELECT image FROM item_images WHERE item_id = ?";
        try (PreparedStatement statement = conn.prepareStatement(query)) {
            statement.setInt(1, itemId);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Blob imageBlob = resultSet.getBlob("image");
                byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
                images.add(imageBytes);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return images;
    }
}


