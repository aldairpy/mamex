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
    <style>
        .ventana-emergente {
            display: none;
            position: fixed;
            z-index: 9999;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .contenido-ventana {
            background-color: #fff;
            width: 580px;
            margin: 100px auto;
            padding: 20px;
            border-radius: 5px;
        }

        .container-fluid {
            align-items: center;
        }
    </style>
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
                    <li><a href="" class="nav-link">Ofertas</a></li>
                    <li><a href="" class="nav-link">Novedades</a></li>
                    <li><a href="contacto.jsp" class="nav-link">Contacto</a></li>
                    <li><a href="" class="nav-link">Nosotros</a></li>
                </ul>
            </div>
            <div class="container d-flex justify-content-lg-end justify-content-center">
                <a href="" class="icon-link p-3">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-search" width="28"
                         height="28" viewBox="0 0 24 24" stroke-width="2" stroke="#ffffff" fill="none"
                         stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <path d="M10 10m-7 0a7 7 0 1 0 14 0a7 7 0 1 0 -14 0" />
                        <path d="M21 21l-6 -6" />
                    </svg>
                </a>
                <a class="icon-link p-3" href="">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-user-circle"
                         width="28" height="28" viewBox="0 0 24 24" stroke-width="2" stroke="#ffffff" fill="none"
                         stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <path d="M12 12m-9 0a9 9 0 1 0 18 0a9 9 0 1 0 -18 0" />
                        <path d="M12 10m-3 0a3 3 0 1 0 6 0a3 3 0 1 0 -6 0" />
                        <path d="M6.168 18.849a4 4 0 0 1 3.832 -2.849h4a4 4 0 0 1 3.834 2.855" />
                    </svg>
                </a>
                <a class="icon-link p-3" href="inicio_sesion.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-shopping-cart"
                         width="28" height="28" viewBox="0 0 24 24" stroke-width="2" stroke="#ffffff" fill="none"
                         stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <path d="M6 19m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0" />
                        <path d="M17 19m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0" />
                        <path d="M17 17h-11v-14h-2" />
                        <path d="M6 5l14 1l-1 7h-13" />
                    </svg>
                </a>
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
                        <p><a onclick="openPopup" href="" style="text-decoration: underline; color: black;">Olvidé mi contraseña</a></p>
                    </div>
                </div>
                <div id="ventanaEmergente1" class="ventana-emergente">
                    <div class="contenido-ventana">
                        <div onclick="closePopup();" class="d-flex justify-content-end m-3">
                            <button type="button" class="btn-close" aria-label="Close"></button>
                        </div>
                        <div class="container text-center" id="ventanaEmergente">
                            <div class="col-12 pt-4 mt-4">
                                <h1 class="mb-4 fw-bolder">
                                    Recuperar contraseña
                                </h1>
                                <span class="text-center lh-md " style="font-size: 1rem;">Introduce la
                                                    dirección de
                                                    correo que usaste en el registro. <br> Te enviaremos un correo con
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
        <div class="col-lg-5 col-12 p-0 d-sm-none">
            <img class="img-fluid w-100" src="../../assets/img/image 28.png">
        </div>
    </div>
</div>




<script>
    function openPopup() {
        document.getElementById("ventanaEmergente1").style.display = "block";
    }

    function closePopup() {
        document.getElementById("ventanaEmergente1").style.display = "none";
    }
</script>

<script src="../../assets/js/bootstrap.bundle.min.js"></script>
<jsp:include page="../../layouts/footer.jsp"/>

</body>