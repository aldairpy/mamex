package mx.edu.utez.mamex.controllers.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.edu.utez.mamex.models.user.DAOUser;
import mx.edu.utez.mamex.models.user.User;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;


@WebServlet(name = "users", urlPatterns = {
        "/user/mamex",
        "/user/register",
        "/user/login",
        "/user/register-successfull"
}) //endpoints para saber a donde redirigir al usuario
public class ServletMAMEX extends HttpServlet {
    private String action;
    private String redirect = "/user/mamex";
    private String id_user, names, lastnames, email, password;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        action = req.getServletPath();
        switch (action) {
            case "/user/mamex": //redirigir al inicio
                redirect = "/index.jsp";
                break;

            case "/user/register-successfull": //una vez registrado te llevara a iniciar sesion
                redirect = "/views/user/inicio_sesion.jsp";
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
                names = req.getParameter("names");
                lastnames = req.getParameter("lastnames");
                email = req.getParameter("email");
                password = req.getParameter("password");
                User user = new User(0L, names, lastnames, email, password);
                boolean result = new DAOUser().save(user);
                if (result) {
                    redirect = "/user/register-successfull?result=" + result
                            + "&message" + URLEncoder.encode("Exito! Usuario registrado correctamente", StandardCharsets.UTF_8);
                } else {
                    redirect = "/user/mamex?result=" + result
                            + "&message" + URLEncoder.encode("Error :/ Acción no realizada correctamente", StandardCharsets.UTF_8);
                } //cambiar la url a un caso fallido, redirigirlo a registrarse de nuevo pero mostrar el mensaje de error.

                break;
            case "/user/login":
                break;
            default:
                redirect = "/user/mamex";
        }
        resp.sendRedirect(req.getContextPath() + redirect);
    }
}
