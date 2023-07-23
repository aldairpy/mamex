package mx.edu.utez.mamex.controllers.user;

import java.io.File;
import java.io.InputStream;
import java.sql.Blob;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import mx.edu.utez.mamex.models.user.DAOUser;
import mx.edu.utez.mamex.models.user.User;
import mx.edu.utez.mamex.models.user.UserLogin;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.UUID;


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
        "/user/admin/products",
        "/user/admin/create-products",
        "/user/logout",
        "/user/profile",
        "/user/update-profile",
        "/user/AboutUs",
        "/user/personal-info"
}) //endpoints para saber a donde redirigir al usuario
public class ServletMAMEX extends HttpServlet {
    private String action;
    private String redirect = "/user/mamex";
    private String redirectAdmin = "/admin/mamex";
    private String id, names, lastnames, email, password, birthday, gender, img_user;
    //private Blob img_user;
    private String mime, fileName;
    //LINUX - "/"
    private String directory = "D:" + File.separator + "mamex";
    private int id_product, quantity;
    private double cost;
    HttpSession session;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        action = req.getServletPath();
        switch (action) {
            case "/user/mamex": //redirigir al inicio
            {
                redirect = "/index.jsp";
            }
            break;

            case "/user/login": //una vez registrado te llevara a iniciar sesion
            {
                session = req.getSession(false);
                if (session.getAttribute("email") != null) {
                    session.setAttribute("email", email);
                    redirect = "/user/profile";
                } else {
                    redirect = "/views/user/inicio_sesion.jsp";
                }
            }
            break;

            case "/user/personal-info":{
                id = req.getParameter("user_id");
                req.setAttribute("user", new DAOUser().findOne(id != null ? Long.parseLong(id) : 0L));
                redirect = "/views/user/personal_info.jsp";
            }break;

            case "/user/logout": {
                try {
                    session = req.getSession();
                    session.invalidate();
                    redirect = "/user/mamex?result =" + true
                            + "&message" + URLEncoder.encode("Sesion cerrada correctamente", StandardCharsets.UTF_8);
                    ;
                } catch (Exception e) {
                    System.out.println("Error: " + e.getMessage());
                    redirect = "/user/mamex?result=" + false
                            + "&message" + URLEncoder.encode("Credentials Missmatch", StandardCharsets.UTF_8);
                }
            }
            break;

            case "/user/register-view": //una vez registrado te llevara a iniciar sesion
            {
                redirect = "/views/user/registro_usuarios.jsp";
            }
            break;

            case "/user/contacto": {
                redirect = "/views/user/contacto.jsp";
            }
            break;

            case "/user/admin/dashboard": {
                redirect = "/views/admin/inicio.jsp";
            }
            break;

            case "/user/admin/products": {
                redirect = "/views/admin/products.jsp";
            }
            break;

            case "/user/admin/create-products": {
                redirect = "/views/admin/crear_producto.jsp";
            }
            break;

            case "/user/go-to-pay": {
                redirect = "/views/user/payment.jsp";
            }
            break;

            case "/user/profile": {
                redirect = "/views/user/profile.jsp";
            }
            break;

            case "/user/AboutUs": {
                redirect = "/views/user/nosotros.jsp";
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
                    User user = new DAOUser().login(email, password);
                    if (user != null) {
                        if (user.getRol() == 1) {
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
                    System.out.println(email +" "+ password);
                    System.out.println(e);
                    redirect = "/user/mamex?result=" + false
                            + "&message" + URLEncoder.encode("Credentials Missmatch", StandardCharsets.UTF_8);
                } finally {

                }
            }
            break;


            case "/user/add-to-cart": {
                try {
                    id = req.getParameter("id_user");
                    id_product = Integer.parseInt(req.getParameter("id_product"));
                    quantity = Integer.parseInt(req.getParameter("quantity"));
                    cost = Integer.parseInt(req.getParameter("cost"));
                } catch (Exception e) {
                }
            }
            break;

            case "/user/update-profile": {
                try {
                    User user = new User();
                    id = req.getParameter("id");
                    User foundUser = new DAOUser().findOne(id != null ? Long.parseLong(id) : 0L);
                    File oldFile = new File(directory + File.separator + foundUser.getFileName());
                    if(oldFile.exists()) oldFile.delete();
                    for (Part part : req.getParts()) {
                        fileName = part.getSubmittedFileName();
                        if (fileName != null) {
                            mime = part.getContentType().split("/")[1];
                            String uid = UUID.randomUUID().toString();
                            user.setFileName(uid + "." + mime);
                            part.write(directory + File.separator + uid + "." + mime);
                            InputStream stream = part.getInputStream();
                            byte[] arr = stream.readAllBytes();
                            user.setImg_user(arr);
                        }
                    }
                    names = req.getParameter("names");
                    lastnames = req.getParameter("lastnames");
                    email = req.getParameter("email");
                    birthday = req.getParameter("birthday");
                    gender = req.getParameter("gender");
                    user.setId(Long.parseLong(id));
                    user.setNames(names);
                    user.setLastnames(lastnames);
                    user.setBirthday(email);
                    user.setBirthday(birthday);
                    user.setGender(gender);
                    if (new DAOUser().update(user)) {
                        redirect = "/user/profile?result=" + true
                                + "&message" + URLEncoder.encode("Perfil actualizado correctamente", StandardCharsets.UTF_8);
                    } else {
                        redirect = "/user/profile?result=" + false
                                + "&message" + URLEncoder.encode("Error al actualizar el perfil", StandardCharsets.UTF_8);
                    }
                } catch (Exception e) {
                }
            }
            break;

            case "/user/go-to-pay":{
                try {
                    //traer el carrito de compras con los productos para despues mandar un correo electronico con los productos
                    //el costo total y la informacion de pago.
                }catch (Exception e){
                }
            }break;

            default: {
                redirect = "/user/mamex";
            }
            break;
        }
        resp.sendRedirect(req.getContextPath() + redirect);
    }
}

