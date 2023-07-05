<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <jsp:include page="layouts/head.jsp"/>
    <link rel="icon" href="./assets/img/OIP.jpg">
    <title>Manos Mexicanas</title>

</head>

<body>
<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#"><img src="${pageContext.request.contextPath}/assets/img/OIP.jpg" alt="logo"/></a>
        <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="ms-5 collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <ul class="mt-lg-3 d-lg-flex justify-content-lg-center " style="list-style: none;">
                    <li><a href="/user/mamex" class="nav-link">Inicio</a></li>
                    <li><a href="" class="nav-link">Categorias</a></li>
                    <li><a href="./views/user/ofertas.jsp" class="nav-link">Ofertas</a></li>
                    <li><a href="" class="nav-link">Novedades</a></li>
                    <li><a href="/user/contacto" class="nav-link">Contacto</a></li>
                    <li><a href="" class="nav-link">Nosotros</a></li>
                </ul>
            </div>
            <div class="container d-flex justify-content-lg-end justify-content-sm-center justify-content-md-center">
                <a href="" class="icon-link p-3">

                    <i class="icon" data-feather = "search"></i>
                </a>
                <a class="icon-link p-3" href="./views/user/inicio_sesion.jsp">
                   <i class="icon" data-feather = "user"></i>
                </a>
                <a class="icon-link p-3" href="views/user/inicio_sesion.jsp">
                    <i class="icon" data-feather = "shopping-cart"></i>

                </a>
            </div>
        </div>
    </div>
</nav>

<main>
    <section>
        <div class="container-fluid p-5" style="background-color: #f0f1ee;">
            <div class="container p-sm-5 p-lg-5">
                <section class="container">
                    <div class="row">
                        <article class="col-12 col-lg-7">
                            <h2 class="display-4 mb-5 mt-5">Descubre la belleza en cada hilo</h2>
                            <p class="lead text-sm-start text-md-start"><em>Sumérgete en un mundo de
                                posibilidades con nuestra amplia
                                colección de tejidos de alta calidad
                                cuidadosamente seleccionados para que puedas crear prendas únicas y
                                proyectos creativos que reflejen tu estilo y pasión por la moda.</em></p>
                            <a href="/user/register-view" class="text-decoration-none text-dark link-animation"
                               style=" font-weight: 700; color:black">
                                <button class="btn btn-dark m-4"
                                        style="font-weight: 300; border-radius: 0; padding: 10px; width: 150px;">
                                    Regístrate
                                </button>
                            </a>
                        </article>
                        <article class="col-12 col-lg-5 ps-lg-5 ps-sm-0">
                            <img src="${pageContext.request.contextPath}/assets/img/e9be2a1f1471feb0c1b18083309ea295.jpg" alt="img-hilos"
                                 class="img-fluid">
                        </article>
                    </div>
                </section>
            </div>
        </div>
    </section>


    <section>
        <div class="container-fluid pb-5">
            <div class="container mt-5">
                <h2 class="display-4 text-center">Explora nuestra gama de exquisitos tejidos</h2>
                <p class=" mt-4 text-center text-sm-center text-md-center m-4 fs-4"
                >Desde suaves algodones hasta lujosas
                    sedas
                    y
                    duraderos linos, encontrarás la calidad y
                    variedad que necesitas para dar vida a tus ideas. Descubre la esencia de la elegancia,
                    la comodidad y la creatividad en cada fibra, y deja que tus proyectos tejidos cuenten historias
                    únicas en
                    cada puntada</p>
            </div>


            <div class="container pt-5 mt-5" style="font-family: 'Raleway', sans-serif; font-weight: 500;">
                <div class="row justify-content-evenly">
                    <div class="col-12 col-lg-5">
                        <div class="circle">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-droplet"
                                 width="28"
                                 height="28" viewBox="0 0 24 24" stroke-width="2" stroke="#ffffff" fill="none"
                                 stroke-linecap="round"
                                 stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                <path
                                        d="M7.502 19.423c2.602 2.105 6.395 2.105 8.996 0c2.602 -2.105 3.262 -5.708 1.566 -8.546l-4.89 -7.26c-.42 -.625 -1.287 -.803 -1.936 -.397a1.376 1.376 0 0 0 -.41 .397l-4.893 7.26c-1.695 2.838 -1.035 6.441 1.567 8.546z"/>
                            </svg>
                        </div>
                        <div class="container text-center">
                            <p class="fs-lg-5">Nuestra tienda te brinda una experiencia refrescante y revitalizante. Al
                                igual que el
                                agua que sacia tu
                                sed,
                                ofrecemos productos que satisfacen tus necesidades y te ayudan a dar vida a tus
                                proyectos.
                            </p>
                        </div>
                    </div>

                    <div class="col-12 col-lg-5">
                        <div class="circle">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-sun" width="28"
                                 height="28"
                                 viewBox="0 0 24 24" stroke-width="2" stroke="#ffffff" fill="none"
                                 stroke-linecap="round"
                                 stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                <path d="M12 12m-4 0a4 4 0 1 0 8 0a4 4 0 1 0 -8 0"/>
                                <path
                                        d="M3 12h1m8 -9v1m8 8h1m-9 8v1m-6.4 -15.4l.7 .7m12.1 -.7l-.7 .7m0 11.4l.7 .7m-12.1 -.7l-.7 .7"/>
                            </svg>
                        </div>
                        <div class="container text-center">
                            <p class="fs-lg-5">
                                En nuestra tienda, encontrarás productos que brillan con calidad y excelencia. Así como
                                el sol irradia
                                luz y calidez, nosotros iluminamos tu experiencia de compra con tejidos de alta calidad
                                y una atención
                                dedicada.
                            </p>
                        </div>
                    </div>
                    <div class="col-12 col-lg-5">
                        <div class="circle">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-heart-handshake"
                                 width="28"
                                 height="28" viewBox="0 0 24 24" stroke-width="2" stroke="#ffffff" fill="none"
                                 stroke-linecap="round"
                                 stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                <path d="M19.5 12.572l-7.5 7.428l-7.5 -7.428a5 5 0 1 1 7.5 -6.566a5 5 0 1 1 7.5 6.572"/>
                                <path
                                        d="M12 6l-3.293 3.293a1 1 0 0 0 0 1.414l.543 .543c.69 .69 1.81 .69 2.5 0l1 -1a3.182 3.182 0 0 1 4.5 0l2.25 2.25"/>
                                <path d="M12.5 15.5l2 2"/>
                                <path d="M15 13l2 2"/>
                            </svg>
                        </div>
                        <div class="container text-center">
                            <p class="fs-lg-5">
                                Nos enorgullece ser una tienda accesible para todos. Al igual que el sol brinda su luz a
                                todos por
                                igual, nuestra tienda está diseñada para ser inclusiva y fácil de navegar.
                            </p>
                        </div>
                    </div>
                    <div class="container pt-5 mt-5">
                        <div class="row justify-content-evenly">
                            <div class="col-12 col-lg-4">
                                <img class="img-fluid" src="./assets/img/descarga.jfif" alt="img5">
                            </div>
                            <div class="col-12 col-lg-4">
                                <img class="img-fluid" src="./assets/img/copia.jfif" alt="img6">
                            </div>
                            <div class="col-12 col-lg-4 ps-5 mt-5">
                                <p class="fs-lg-5">¡Bienvenido a Manos Mexicanas! Aquí encontrarás mucho más que simples
                                    tejidos. Nos
                                    enorgullece
                                    ofrecerte una experiencia completa donde podrás explorar un mundo de posibilidades
                                    creativas.
                                    <br><br>
                                    Nuestra tienda se destaca por brindarte: <br>
                                <ul style="list-style: number;">
                                    <li>Una selección excepcional: Nos dedicamos a ofrecerte una amplia variedad de
                                        tejidos de alta
                                        calidad,
                                        cuidadosamente elegidos para satisfacer tus necesidades y superar tus
                                        expectativas.
                                    </li>

                                    <li>Inspiración ilimitada: Queremos ser tu fuente de inspiración. Por eso, te
                                        ofrecemos una amplia
                                        gama
                                        de productos y servicios para que puedas dar vida a tus ideas y proyectos.
                                    </li>

                                    <li>Atención personalizada: Valoramos a cada cliente y nos esforzamos por brindarte
                                        un servicio
                                        excepcional.
                                    </li>
                                </ul>
                                <button class="btn btn-dark m-4"
                                        style="font-weight: 300; border-radius: 0; padding: 10px; width: 150px;">Ver más
                                </button>

                                </p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container-fluid p-5" style="background-color: #f0f1ee;">
            <div class="container">
                <h3 class="display-4 text-center">Los más populares de esta semana</h3>
                <p class="lead text-center fw-medium fs-5 mb-5">Dejate cautivar por los artículos que han sido tendencia
                    esta
                    semana</p>
            </div>
            <div class="container">
                <div id="carouselExampleIndicators" class="carousel slide">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                                class="active"
                                aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                                aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner" id="myCarousel">
                        <div class="carousel-item active">
                            <img src="./assets/img/Rancho_Cucamonga_Tree_16.png" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/img/FwBEgeVX0AAeJqf.jpg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/img/R.jpg" class="d-block w-100" alt="...">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </section>
</main>

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
    feather.replace()
</script>
<script src="./assets/js/bootstrap.bundle.min.js"></script>
<jsp:include page="layouts/footer.jsp"/>
</body>
</html>