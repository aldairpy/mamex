package mx.edu.utez.mamex.models.user;


import mx.edu.utez.mamex.models.crud.DAORepository;
import mx.edu.utez.mamex.utils.MySQLConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DAOUser{
    private Connection conn;
    private PreparedStatement pstm;
    private CallableStatement cs;
    private ResultSet rs;



    public List<User> findAll() {
        List <User> users = new ArrayList<>();
        User user = null;
        try {
            conn = new MySQLConnection().connect();
            cs = conn.prepareCall("{call mostrar_info()}");
            boolean result = cs.execute();
            if(result) {
                rs = cs.getResultSet();
                while (rs.next()) {
                    user = new User();
                    user.setId(rs.getLong("id_user"));
                    user.setNames(rs.getString("name_user"));
                    user.setLastnames(rs.getString("lastname"));
                    user.setEmail(rs.getString("email"));
                    user.setGender(rs.getString("sex"));
                    user.setBirthday(rs.getString("birthday"));
                    user.setImg_user(rs.getBytes("photo"));
                }
            }
        } catch (SQLException e) {
            Logger.getLogger(DAOUser.class.getName())
                    .log(Level.SEVERE, "ERROR findAll" + e.getMessage());
        } finally {
            close();
        }
        return users;
    }


    public User findOne(Long id) {
        User user = null;
        try {
            conn = new MySQLConnection().connect();
            String query = "select * from users where id_user = ?";
            pstm = conn.prepareStatement(query);
            pstm.setLong(1, id);
            rs = pstm.executeQuery();
            while (rs.next()){
                user = new User();
                user.setId(rs.getLong("id_user"));
                user.setNames(rs.getString("name_user"));
                user.setLastnames(rs.getString("lastname"));
                user.setEmail(rs.getString("email"));
                user.setBirthday(rs.getString("birthday"));
                user.setGender(rs.getString("gender"));
                user.setImg_user(rs.getBytes("photo"));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }finally {
            close();
        }
        return user;
    }

    public boolean save(User object) {
        try {
            //se realiza la conexion a la base de datos
            conn = new MySQLConnection().connect();
            //se define la sentencia mysql
            cs = conn.prepareCall("{call nuevo_usuario(?, ?, ?, ?, 'llaveencriptacion')}");
            //establecemos el valor a los parametros de la sentencia
            cs.setString(1, object.getNames());
            cs.setString(2, object.getLastnames());
            cs.setString(3, object.getEmail());
            cs.setString(4, object.getPassword());
            //retorna un valor 0 si la consulta es fallida o un 1 si es correcta
            boolean result = cs.execute();
            return !result;
        } catch (SQLException e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, "Error save" + e.getMessage());
        } finally {
            close();
        }
        return false;
    } //metodo para registrar un nuevo usuario a mamex

    public boolean login(User object) {
        return false;
    }


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
            pstm.setBytes(6, object.getImg_user());
            pstm.setLong(7, object.getId());
            return pstm.executeUpdate() > 0;
        }catch (SQLException e){
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, "Error update" + e.getMessage());
        }
        return false;
    }

    public boolean delete(Long id) {
        return false;
    }

    public boolean addToCart(User object) {
        return false;
    }

    public User login(String email, String password){
        try{
            conn = new MySQLConnection().connect();
            cs = conn.prepareCall("{call desencriptar_contra (?, ?, 'llaveencriptacion')}");
            cs.setString(1, email);
            cs.setString(2, password);
            boolean result = cs.execute();
            if(result){
                rs = cs.getResultSet();
                if (rs.next()) {
                    User user = new User();
                    user.setId(rs.getLong("id_user"));
                    user.setRol(rs.getInt("rol"));
                    user.setEmail(rs.getString("email"));
                    user.setNames(rs.getString("name_user"));
                    user.setLastnames(rs.getString("lastname"));
                    user.setBirthday(rs.getString("birthday"));
                    user.setGender(rs.getString("sex"));
                    user.getImg_user();
                    rs.close();
                    return user;
                }
                rs.close();
            }
        } catch (SQLException e) {
            Logger.getLogger(DAOUser.class.getName())
                    .log(Level.SEVERE,
                            "Credentials mismatch: " + e.getMessage());
        } finally {
            close();
        }
        return null;
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

