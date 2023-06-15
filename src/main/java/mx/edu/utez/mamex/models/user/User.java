package mx.edu.utez.mamex.models.user;

//se crea la clase usuario con sus constructores y sus metodos set y get
public class User {
    private Long id;
    private String names;
    private String lastnames;
    private String email;
    private String password;

    public User() {

    }

    public User(Long id, String names, String lastnames, String email, String password) {
        this.id = id;
        this.names = names;
        this.lastnames = lastnames;
        this.email = email;
        this.password = password;
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
}
