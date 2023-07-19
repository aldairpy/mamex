package mx.edu.utez.mamex.controllers.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mx.edu.utez.mamex.models.user.DAOUser;
import mx.edu.utez.mamex.models.user.User;
import mx.edu.utez.mamex.models.user.UserLogin;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;


@WebServlet(name = "users", urlPatterns = {
        "/user/mamex",
        "/user/register",
        "/user/login",
        "/user/register-successfull",
        "/user/admin/dashboard",
        "/user/register-view",
        "/user/contacto",
        "/user/add-to-cart",
        "/user/cart-view",
        "/user/go-to-pay",
        "/user/AboutUs",
        "/user/MyProfile",
        "/user/Info"
}) //endpoints para saber a donde redirigir al usuario
public class ServletMAMEX extends HttpServlet {
    private String action;
    private String redirect = "/user/mamex";
    private String redirectAdmin = "/admin/mamex";
    private String id_user, names, lastnames, email, password;
    private int id_product, quantity;
    private double cost;
    HttpSession session;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        action = req.getServletPath();
        switch (action) {
            case "/user/mamex": //redirigir al inicio
                redirect = "/index.jsp";
                break;

            case "/user/login": //una vez registrado te llevara a iniciar sesion
                redirect = "/views/user/inicio_sesion.jsp";
                break;
            case "/user/register-view": //una vez registrado te llevara a iniciar sesion
                redirect = "/views/user/registro_usuarios.jsp";
                break;

            case "/user/contacto":
                redirect = "/views/user/contacto.jsp";
                break;

            case "/user/admin/dashboard": {
                redirect = "/views/admin/inicio.jsp";
            }
            break;
            case "/user/go-to-pay": {
                redirect = "/views/user/payment.jsp";
            }
            break;
            case "/user/AboutUs": {
                redirect = "/views/user/nosotros.jsp";
            }
            break;
            case "/user/MyProfile": {
                redirect = "/views/user/profile.jsp";
            }
            break;
            case "/user/Info": {
                redirect = "/views/user/personal_info.jsp";
            }
            break;

            default:
                System.out.println(action);
                break;
        }
        req.getRequestDispatcher(redirect).forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        action = req.getServletPath();
        switch (action) {
            case "/user/register":
                try {
                    names = req.getParameter("names");
                    lastnames = req.getParameter("lastnames");
                    email = req.getParameter("email");
                    password = req.getParameter("password");
                    User user = new User(0L, names, lastnames, email, password);
                    boolean result = new DAOUser().save(user);
                    if (result) {
                        redirect = "/user/login?result=" + true
                                + "&message" + URLEncoder.encode("Exito! Usuario registrado correctamente", StandardCharsets.UTF_8);
                    } else {
                        throw new Exception("ERROR");
                    } //url cambiada :)
                } catch (Exception e) {
                    redirect = "/user/mamex?result=" + false
                            + "&message" + URLEncoder.encode("Error :/ Acción no realizada correctamente", StandardCharsets.UTF_8);
                }
                break;

            case "/user/login": {
                try {
                    email = req.getParameter("email");
                    password = req.getParameter("password");
                    UserLogin user = new UserLogin(email, password);
                    if (user != null) {
                        if (user.getEmail().equals("adminmamex@gmail.com") && user.getPassword().equals("admin1234")) {
                            session = req.getSession();
                            session.setAttribute("email", email);
                            redirect = "/user/admin/dashboard?result=" + true
                                    + "&message" + URLEncoder.encode("Inicio de sesion correctamente administrador! :D" + user.getNames(), StandardCharsets.UTF_8);
                        } else {
                            session = req.getSession();
                            session.setAttribute("email", email);
                            redirect = "/user/mamex?result=" + true
                                    + "&message" + URLEncoder.encode("Inicio de sesion correctamente! :D" + user.getNames(), StandardCharsets.UTF_8);
                        }
                    } else {
                        redirect = "/user/mamex?result=" + false
                                + "&message" + URLEncoder.encode("Usuario o contraseña incorrectos", StandardCharsets.UTF_8);
                    }

                } catch (Exception e) {
                    System.out.println("Error: " + e.getMessage());
                    redirect = "/user/mamex?result=" + false
                            + "&message" + URLEncoder.encode("Credentials Missmatch", StandardCharsets.UTF_8);
                } finally {

                }
            }
            break;

            case "/user/unlogin": {
                try {
                    session = req.getSession();
                    session.invalidate();
                    redirect = "/user/login?result =" + true
                            + "&message" + URLEncoder.encode("Sesion cerrada correctamente", StandardCharsets.UTF_8);
                    ;
                } catch (Exception e) {
                    System.out.println("Error: " + e.getMessage());
                    redirect = "/user/mamex?result=" + false
                            + "&message" + URLEncoder.encode("Credentials Missmatch", StandardCharsets.UTF_8);
                }
            }
            break;

            case "/user/add-to-cart": {
                try {
                    id_user = req.getParameter("id_user");
                    id_product = Integer.parseInt(req.getParameter("id_product"));
                    quantity = Integer.parseInt(req.getParameter("quantity"));
                    cost = Integer.parseInt(req.getParameter("cost"));
                } catch (Exception e) {
                }
            }
            break;

            default:
                redirect = "/user/mamex";
        }
        resp.sendRedirect(req.getContextPath() + redirect);
    }
}
