<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600&family=Raleway:wght@300;400;500&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="../../assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../../assets/css/nav.css" />
    <link rel="icon" href="../../assets/img/OIP.jpg">
    <jsp:include page="../../layouts/head.jsp"/>
    <title>Contacto</title>
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
            <div class="ms-5 collapse navbar-collapse" id="navbarNavAltMarkup">
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
                <div class="container d-flex justify-content-lg-end">
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



    <div class="container-fluid pt-5 border">
        <div class="row">
            <div class="col-lg-6 col-12">
                <div class="container border">
                    <h1>Contáctanos</h1>
                    <p class="fw-medium"> ¿Tienes algún inconveniente con alguna compra?<br>
                        No dudes en escribirnos, estamos para resolver todas tus dudas.
                    </p>

                    <h2>
                        Correo
                    </h2>
                    <a href="mailto:manos_mexicanas@gmail.com" type="email"
                        style="text-decoration: none; color: black;">manos_mexicanas@gmail.com</a>

                    <h3>
                        Redes
                    </h3>

                    <ul style="list-style: none;">
                        <li>
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-brand-instagram"
                                width="28" height="28" viewBox="0 0 24 24" stroke-width="1.5" stroke="#000000"
                                fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <path
                                    d="M4 4m0 4a4 4 0 0 1 4 -4h8a4 4 0 0 1 4 4v8a4 4 0 0 1 -4 4h-8a4 4 0 0 1 -4 -4z" />
                                <path d="M12 12m-3 0a3 3 0 1 0 6 0a3 3 0 1 0 -6 0" />
                                <path d="M16.5 7.5l0 .01" />
                            </svg>
                            <a style="text-decoration: none; color: black;"
                                href="https://www.instagram.com/billieeilish/" target="_blank">Instagram</a>
                        </li>
                        <li>
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-brand-twitter"
                                width="28" height="28" viewBox="0 0 24 24" stroke-width="1.5" stroke="#000000"
                                fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <path
                                    d="M22 4.01c-1 .49 -1.98 .689 -3 .99c-1.121 -1.265 -2.783 -1.335 -4.38 -.737s-2.643 2.06 -2.62 3.737v1c-3.245 .083 -6.135 -1.395 -8 -4c0 0 -4.182 7.433 4 11c-1.872 1.247 -3.739 2.088 -6 2c3.308 1.803 6.913 2.423 10.034 1.517c3.58 -1.04 6.522 -3.723 7.651 -7.742a13.84 13.84 0 0 0 .497 -3.753c0 -.249 1.51 -2.772 1.818 -4.013z" />
                            </svg>
                            <a style="text-decoration: none; color: black;" href="">Twitter</a>
                        </li>
                        <li>
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-brand-facebook"
                                width="28" height="28" viewBox="0 0 24 24" stroke-width="1.5" stroke="#000000"
                                fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <path d="M7 10v4h3v7h4v-7h3l1 -4h-4v-2a1 1 0 0 1 1 -1h3v-4h-3a5 5 0 0 0 -5 5v2h-3" />
                            </svg>
                            <a style="text-decoration: none; color: black;" href="">Facebook</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-6 col-12">
                <h1>HOLA FORMS</h1>
            </div>
        </div>

    </div>


    <script src="../../assets/js/bootstrap.bundle.min.js"></script>
<jsp:include page="../../layouts/footer.jsp"/>
</body>

</html>