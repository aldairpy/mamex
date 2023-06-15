package mx.edu.utez.mamex.controllers.user;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;


@WebServlet(name = "mamex", urlPatterns = {
        "/manos-mexicanas/registrate"
}) //endpoints para saber a donde redirigir al usuario
public class ServletMAMEX extends HttpServlet {
}
