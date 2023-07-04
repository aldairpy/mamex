package mx.edu.utez.mamex.models.user;


import mx.edu.utez.mamex.models.crud.DAORepository;
import mx.edu.utez.mamex.utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DAOUser implements DAORepository<User> {
    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;


    @Override
    public List<User> findAll() {
        return null;
    }

    @Override
    public User findOne() {
        return null;
    }

    @Override
    public boolean save(User object) {
        try {
            //se realiza la conexion a la base de datos
            conn = new MySQLConnection().connect();
            //se define la sentencia mysql
            String query = "INSERT INTO users (names, lastnames, email, password) VALUES(?, ?, ?, ?);";
            //se prepara la sentencia
            pstm = conn.prepareStatement(query);
            //establecemos el valor a los parametros de la sentencia
            pstm.setString(1, object.getNames());
            pstm.setString(2, object.getLastnames());
            pstm.setString(3, object.getEmail());
            pstm.setString(4, object.getPassword());
            //retorna un valor 0 si la consulta es fallida o un 1 si es correcta
            return pstm.executeUpdate() > 0;
        } catch (SQLException e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, "Error save" + e.getMessage());
        } finally {
            close();
        }
        return false;
    } //metodo para registrar un nuevo usuario a mamex

    @Override
    public boolean update(User object) {
        return false;
    }

    @Override
    public boolean delete(Long id) {
        return false;
    }


    public void close() {
        try {
            if (conn != null) conn.close();
            if (pstm != null) pstm.close();
            if (rs != null) rs.close();
        } catch (SQLException e) {

        }
    }
}
