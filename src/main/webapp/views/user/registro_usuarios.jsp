<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
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

        <div class="col-lg-7 col-12 mt-lg-4 mt-md-5 mt-xs-1">
            <h1 class="display-3 text-center fs-1 fw-bold mt-5">
                CREAR CUENTA
            </h1>
            <div class="container">
                <form id="register-form" class="text-center w-50 m-auto fs-1 pt-3" novalidate action="/user/register" method="post">
                    <div class="m-4">
                        <input class="form-control" type="text" name="names" id="names" placeholder="Nombre(s)" required>
                    </div>
                    <div class="m-4">
                        <input class="form-control" type="text" name="lastnames" id="lastnames" placeholder="Apellidos" required>
                    </div>
                    <div class="m-4">
                        <input class="form-control" type="email" name="email" id="email" placeholder="E-mail" required>
                    </div>
                    <div class="m-4">
                        <input class="form-control" type="password" name="password" id="password" placeholder="Contraseña" required>
                    </div>
                    <a class="text-decoration-none text-dark link-animation"><button type="submit" class="btn btn-dark m-4"
                                                                                     style="font-weight: 500; border-radius: 0px; padding: 10px; width: 150px;">Regístrate</button>
                    </a>
                </form>
                <div class="container">
                    <div class="col-12 text-center">
                        <p class="text-center mt-5">¿Ya tienes una cuenta? <a href="inicio_sesion.jsp"
                                                                              class="text-decoration-none text-dark link-animation"
                                                                              style=" font-weight: 700; color:black">Inicia sesión</a></p>
                    </div>

                </div>

            </div>
        </div>
        <div class="col-lg-5 col-12 p-0 d-none d-md-none d-lg-block d-md-block">
            <img class="w-100 vh-100" src="../../assets/img/image 27.png" alt="imagen_registro">
        </div>

    </div>


</div>


















<script src="../../assets/js/bootstrap.bundle.min.js"></script>
<jsp:include page="../../layouts/footer.jsp"/>

<script>
    (function (){
        const form = document.getElementById("register-form");
        form.addEventListener("submit", function (event){
            if (!form.checkValidity()){ //Valida que los campos oligatorios esten correctamente llenados.
                event.preventDefault();
                event.stopPropagation();
            }
            form.classList.add("was-validated");
        }, false);
    })();
</script>
</body>

</html>