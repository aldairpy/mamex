<%--
  Created by IntelliJ IDEA.
  User: albertovazquez
  Date: 11/07/23
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <jsp:include page="head.jsp"/>
</head>
<body>
<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand ms-lg-5" href="/user/mamex"><img
                src="${pageContext.request.contextPath}/assets/img/OIP.jpg" alt="logo"/></a>
        <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse text-center navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <ul class="mt-lg-3 d-lg-flex justify-content-lg-center justify-content-center list-unstyled">
                    <li><a href="${pageContext.request.contextPath}/user/mamex" class="nav-link">Inicio</a></li>
                    <li><a href="" class="nav-link">Categorias</a></li>
                    <li><a href="" class="nav-link">Novedades</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/contacto" class="nav-link">Contacto</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/AboutUs" class="nav-link">Nosotros</a></li>
                </ul>
            </div>
            <div class="container">
                <div class="container d-flex justify-content-lg-end justify-content-center justify-content-md-center">
                    <button class="icon-button m-2">
                        <i class="icon" data-feather="search"></i>
                    </button>
                    <div class="dropdown">
                        <button class="btn" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="icon" data-feather="user"></i>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-lg-end dropdown-menu-sm-start">
                            <li>
                                <button type="button" class="btn">
                                    <a href="/user/login" style="text-decoration: none; color: black">Mi perfil</a>
                                </button>
                            </li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/user/register-view">Registrarse</a></li>
                        </ul>
                    </div>
                    <button class="icon-button m-2">
                        <i class="icon" data-feather="shopping-cart"></i>
                    </button>
                </div>
            </div>

        </div>
    </div>
</nav>

<script src="../assets/js/bootstrap.bundle.min.js"></script>
<jsp:include page="footer.jsp"/>
</body>
</html>
