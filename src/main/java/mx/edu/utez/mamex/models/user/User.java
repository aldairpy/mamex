package mx.edu.utez.mamex.models.user;

import java.sql.Blob;

//se crea la clase usuario con sus constructores y sus metodos set y get
public class User {
    private Long id;
    private String names;
    private String lastnames;
    private String email;
    private String password;
    private String birthday;
    private String gender;
    private byte[] img_user;
    private String fileName;
    private int rol;

    public User() {

    }

    public User(Long id, String names, String lastnames, String email, String password) {
        this.id = id;
        this.names = names;
        this.lastnames = lastnames;
        this.email = email;
        this.password = password;
    }

    public User(long id, String names, String lastnames, String email, String birthday, String gender, int rol) {
        this.id = id;
        this.names = names;
        this.lastnames = lastnames;
        this.email = email;
        this.birthday = birthday;
        this.gender = gender;
        this.rol = rol;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNames() {
        return names;
    }

    public void setNames(String names) {
        this.names = names;
    }

    public String getLastnames() {
        return lastnames;
    }

    public void setLastnames(String lastnames) {
        this.lastnames = lastnames;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public byte[] getImg_user() {
        return img_user;
    }

    public void setImg_user(byte[] img_user) {
        this.img_user = img_user;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public int getRol() {
        return rol;
    }

    public void setRol(int rol) {
        this.rol = rol;
    }
}
