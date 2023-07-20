package mx.edu.utez.mamex.models.login;

import mx.edu.utez.mamex.models.crud.DAORepository;
import mx.edu.utez.mamex.models.user.DAOUser;
import mx.edu.utez.mamex.models.user.UserLogin;
import mx.edu.utez.mamex.utils.MySQLConnection;

import java.sql.*;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DAOLogin{

    private Connection conn;
    private PreparedStatement pstm;
    private CallableStatement cs;
    private ResultSet rs;
    public List<UserLogin> findAll() {
        return null;
    }

    public UserLogin findOne() {
        return null;
    }

    public boolean save(UserLogin object) {
        try {
            conn = new MySQLConnection().connect();
            String query = "{call login_user(?, ?)}";
            cs = conn.prepareCall(query);
            cs.setString(1, object.getEmail());
            cs.setString(2, object.getPassword());
            rs = cs.executeQuery();
            if (rs.next()) {
                object.setEmail(rs.getString("email"));
                object.setPassword(rs.getString("password"));
                return true;
            }else{
            }

        } catch (SQLException e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, "Credentials Missmatch" + e.getMessage());
        }finally {
            close();
        }
        return false;
    }

    public boolean login(UserLogin object) {
        return false;
    }

    public boolean update(UserLogin object) {
        return false;
    }


    public boolean delete(Long id) {
        return false;
    }

    public boolean addToCart(UserLogin object) {
        return false;
    }

    public void close () {
        try {
            if (conn != null) conn.close();
            if (pstm != null) pstm.close();
            if (rs != null) rs.close();
            if (cs != null) cs.close();
        } catch (SQLException e) {

        }
    }
}
