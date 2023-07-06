<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600&family=Raleway:wght@300;400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../../assets/css/nav.css" />
    <link rel="icon" href="../../assets/img/OIP.jpg">
    <jsp:include page="../../layouts/head.jsp"/>
    <title>Manos Mexicanas</title>
</head>

<body>

<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark ">
    <div class="container">
        <a class="navbar-brand" href="#"><img src="../../assets/img/OIP.jpg" alt="logo" /></a>
        <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <ul class="mt-lg-3 d-lg-flex justify-content-lg-center " style="list-style: none;">
                    <li><a href="../../index.jsp" class="nav-link">Inicio</a></li>
                    <li><a href="" class="nav-link">Categorias</a></li>
                    <li><a href="ofertas.jsp" class="nav-link">Ofertas</a></li>
                    <li><a href="" class="nav-link">Novedades</a></li>
                    <li><a href="contacto.jsp" class="nav-link">Contacto</a></li>
                    <li><a href="" class="nav-link">Nosotros</a></li>
                </ul>
            </div>
            <div class="container d-flex justify-content-lg-end justify-content-sm-center justify-content-md-center">
                <button class="icon-button m-2">
                    <i class="icon" data-feather="search"></i>
                </button>
                <a class="m-2" href="../../views/user/inicio_sesion.jsp">
                    <i class="icon" data-feather="user"></i>
                </a>
                <button class="icon-button m-2">
                    <i class="icon" data-feather="shopping-cart"></i>
                </button>
            </div>
        </div>
    </div>
</nav>


<div class="container-fluid">
    <div class="row">
        <div class="col-lg-7 col-12 mt-lg-4 mt-md-1 ">
            <h1 class="display-3 text-center fs-1 fw-bold mt-5">
                INICIAR SESIÓN
            </h1>

            <div class="container-fluid">
                <form class="text-center w-50 m-auto pt-4" novalidate action="/user/login" method="post">
                    <div class="m-4">
                        <input class="form-control" type="email" id="email" placeholder="E-mail" required>
                    </div>
                    <div class="m-4">
                        <input class="form-control" type="password" id="password" placeholder="Contraseña" required>
                    </div>
                    <a class="text-decoration-none text-dark link-animation"><button type="submit" class="btn btn-dark m-4"
                                                                                     style="font-weight: 500; border-radius: 0px; padding: 10px; width: 150px;">Iniciar
                        sesión</button>
                    </a>
                </form>
                <div class="container">
                    <div class="col-12 text-center mt-5">
                        <p class="text-center">¿No tienes una cuenta? <a href="registro_usuarios.jsp"
                                                                         class="text-decoration-none text-dark link-animation"
                                                                         style=" font-weight: 700; color:black">Regístrate</a></p>
                        <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#resetPassword">
                            Olvidé mi contraseña
                        </button>
                    </div>
                    <div class="modal fade" id="resetPassword" tabindex="-1"
                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="d-flex justify-content-end m-3">
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-header">
                                    <div class="container text-center">
                                        <h1 class="mb-4 fw-bolder">
                                            Recuperar contraseña
                                        </h1>
                                    </div>
                                </div>
                                <div class="modal-body">
                                    <div class="container text-center">
                                                    <span class="text-center lh-md " style="font-size: 1rem;">Introduce
                                                        la
                                                        dirección de
                                                        correo que usaste en el registro. <br> Te enviaremos un correo
                                                        con
                                                        instrucciones para
                                                        restablecer tu
                                                        contraseña.</span>
                                        <div class="mt-5">
                                            <form action="">
                                                <label class="fw-bold" style="font-size: 14px;">Introduce tu
                                                    correo electrónico</label>
                                            </form>
                                        </div>
                                        <div class="p-2">
                                            <input style="width: inherit; padding: 6px;" type="email"
                                                   name="user_email" id="email_password"
                                                   placeholder="Correo electrónico" required>
                                        </div>
                                        <button class="btn btn-dark m-5 m-lg-4"
                                                style="font-weight: 500; border-radius: 50px; padding: 10px; width: 100px;">Enviar</button>
                                    </div>
                                    <div class="modal-footer">
                                        <div>
                                            <p class="text-center pb-5 m-3 fw-bold"
                                               style="font-size: 1rem; font-weight: 400;">
                                                Si necesitas más ayuda, contacta con nosotros en <a
                                                    href="mailto:manos_mexicanas@gmail.com">manos_mexicanas@gmail.com</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
        <div class="col-lg-5 p-0 d-lg-block d-none">
            <img class="w-100 vh-100"  src="../../assets/img/image 28.png">
        </div>
    </div>
</div>

<script src="../../assets/js/bootstrap.bundle.min.js"></script>
<jsp:include page="../../layouts/footer.jsp"/>

</body>