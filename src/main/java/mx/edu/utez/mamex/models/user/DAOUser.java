package mx.edu.utez.mamex.models.user;


import mx.edu.utez.mamex.models.crud.DAORepository;
import mx.edu.utez.mamex.utils.MySQLConnection;

import java.sql.*;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DAOUser implements DAORepository<User> {
    private Connection conn;
    private PreparedStatement pstm;
    private CallableStatement cs;
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
            String query = "INSERT INTO users (name_user, lastname, email, password) VALUES(?, ?, ?, ?);";
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
        try{
            conn = new MySQLConnection().connect();
            String query = "update users set name_user = ?, lastname = ?, email = ?, birthday = ?, sex = ?" +
                    ", photo = ? where user_id_user = ?;";
            pstm = conn.prepareStatement(query);
            pstm.setString(1, object.getNames());
            pstm.setString(2, object.getLastnames());
            pstm.setString(3, object.getEmail());
            pstm.setString(4, object.getBirthday());
            pstm.setString(5, object.getGender());
            pstm.setBlob(6, object.getImg_user());
            pstm.setLong(7, object.getId());
            return pstm.executeUpdate() > 0;
        }catch (SQLException e){
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, "Error update" + e.getMessage());
        }
        return false;
    }

    @Override
    public boolean delete(Long id) {
        return false;
    }

    @Override
    public boolean addToCart(User object) {
        return false;
    }

    public boolean login(User object) {
        return false;
    }

    public User prueba(String email, String password) {
        try {
            conn = new MySQLConnection().connect();
            String query = "{call prueba(?)}";
            cs = conn.prepareCall(query);
            cs.setLong(1,1);
            rs = cs.executeQuery();
            while (rs.next()) {
                System.out.println(rs.getString("email"));
            }

        } catch (SQLException e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, "Credentials Missmatch" + e.getMessage());
        }finally {
            close();
        }
        return null;
    }

    public static void main(String[] args) {
        DAOUser dao = new DAOUser();
        dao.prueba("","");
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

