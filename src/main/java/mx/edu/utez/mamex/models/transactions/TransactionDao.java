package mx.edu.utez.mamex.models.transactions;

import mx.edu.utez.mamex.utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TransactionDao {
    private Connection con;

    public TransactionDao(Connection con) {
        this.con = con;
    }

    public double getTotalEarnings() {
        double totalEarnings = 0;
        String sql = "SELECT SUM(subtotal) FROM sales";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                totalEarnings = rs.getDouble(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return totalEarnings;
    }
}


