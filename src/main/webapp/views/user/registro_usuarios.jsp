<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <jsp:include page="../../layouts/head.jsp"/>
    <title>Manos Mexicanas</title>
</head>

<body>
<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark ">
    <div class="container">
        <a class="navbar-brand" href="#"><img src="../../assets/img/OIP.jpg" alt="logo"/></a>
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
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                        <path d="M10 10m-7 0a7 7 0 1 0 14 0a7 7 0 1 0 -14 0"/>
                        <path d="M21 21l-6 -6"/>
                    </svg>
                </a>
                <a class="icon-link p-3" href="">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-user-circle"
                         width="28" height="28" viewBox="0 0 24 24" stroke-width="2" stroke="#ffffff" fill="none"
                         stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                        <path d="M12 12m-9 0a9 9 0 1 0 18 0a9 9 0 1 0 -18 0"/>
                        <path d="M12 10m-3 0a3 3 0 1 0 6 0a3 3 0 1 0 -6 0"/>
                        <path d="M6.168 18.849a4 4 0 0 1 3.832 -2.849h4a4 4 0 0 1 3.834 2.855"/>
                    </svg>
                </a>
                <a class="icon-link p-3" href="inicio_sesion.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-shopping-cart"
                         width="28" height="28" viewBox="0 0 24 24" stroke-width="2" stroke="#ffffff" fill="none"
                         stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                        <path d="M6 19m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0"/>
                        <path d="M17 19m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0"/>
                        <path d="M17 17h-11v-14h-2"/>
                        <path d="M6 5l14 1l-1 7h-13"/>
                    </svg>
                </a>
            </div>
        </div>
    </div>
</nav>


<div class="container-fluid">
    <div class="row">
        <div class="col-lg-5 col-12 p-0 w-md-100">
            <img class="img-fluid w-100" src="../../assets/img/image 27.png">
        </div>
        <div class="col-lg-7 col-12 mt-lg-4 mt-md-5 mt-xs-1">
            <h1 class="display-3 text-center fs-1 fw-bold mt-5">
                CREAR CUENTA
            </h1>
            <div class="container">
                <form id="register-form" class="text-center w-50 m-auto fs-1 pt-3" novalidate action="/user/register"
                      method="post">
                    <div class="m-4">
                        <input class="form-control" type="text" name="names" id="names" placeholder="Nombre(s)"
                               required>
                    </div>
                    <div class="m-4">
                        <input class="form-control" type="text" name="lastnames" id="lastnames" placeholder="Apellidos"
                               required>
                    </div>
                    <div class="m-4">
                        <input class="form-control" type="email" name="email" id="email" placeholder="E-mail" required>
                    </div>
                    <div class="m-4">
                        <input class="form-control" type="password" name="password" id="password"
                               placeholder="Contraseña" required>
                    </div>

                    <button id="btn-registro" type="submit" class="btn btn-dark m-4"
                            style="font-weight: 500; border-radius: 0px; padding: 10px; width: 150px;">Regístrate
                    </button>

                    <!-- Agrega la ventana modal -->
                    <div id="modal-registro" class="modal fade" tabindex="-1" role="dialog">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Registro Exitoso</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <p>Tu registro ha sido exitoso. ¡Bienvenido/a a nuestro sitio web!</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                </div>
                            </div>
                        </div>
                    </div>


                </form>
                <div class="container">
                    <div class="col-12 text-center">
                        <p class="text-center mt-5">¿Ya tienes una cuenta? <a href="inicio_sesion.jsp"
                                                                              class="text-decoration-none text-dark link-animation"
                                                                              style=" font-weight: 700; color:black">Inicia
                            sesión</a></p>
                    </div>

                </div>

            </div>
        </div>

    </div>


</div>


<footer class="p-5" style="background-color: #6b6b6b">
    <div class="container text-white border-bottom border-white">
        <nav>
            <h1 style="font-weight: 400">
                MANOS <br/>
                MEXICANAS
            </h1>
            <br/><br/>
            <p>
                <a href="mailto:manos_mexicanas@gmail.com"
                   class="link-light link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">manos_mexicanas@gmail.com</a>
            </p>
            <br/><br/>
            <p>Llama al: 777-549-9809</p>
            <br/>

        </nav>
    </div>
    <p class="text-white text-center p-5" style="font-family: 'Raleway', sans-serif;">
        Copyrights. All rights reserved.
    </p>
</footer>

<script>
    // Agrega el evento de escucha al botón de registro
    $('#btn-registro').click(function() {
        $('#modal-registro').modal('show'); // Muestra la ventana modal

        // Desaparece la ventana modal después de 3 segundos (3000 milisegundos)
        setTimeout(function() {
            $('#modal-registro').modal('hide');
        }, 3000);
    });
</script>
<script src="../../assets/js/bootstrap.bundle.min.js"></script>
<jsp:include page="../../layouts/footer.jsp"/>

<script>
    (function () {
        const form = document.getElementById("register-form");
        form.addEventListener("submit", function (event) {
            if (!form.checkValidity()) { //Valida que los campos oligatorios esten correctamente llenados.
                event.preventDefault();
                event.stopPropagation();
            }
            form.classList.add("was-validated");
        }, false);
    })();
</script>
</body>

</html>