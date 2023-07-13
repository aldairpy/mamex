package mx.edu.utez.mamex.models.user;

public class UserLogin extends User{
    private String email;
    private String password;
    User user = null;

    public UserLogin(){

    }

    public UserLogin(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = user.getEmail();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = user.getPassword();
    }
}
