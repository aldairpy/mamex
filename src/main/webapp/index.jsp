<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style>
        .micarrusel {
            margin: 20px 20px 20px 20px;
            width: 1430px;
            height: 500px;
        }

        .carousel-item {
            width: 750px;
            height: 500px;
        }

        .mini-card {
            position: relative;
            width: 222px;
            height: 329px;
            box-shadow: 0px 1px 13px rgba(0, 0, 0, 0.1);
            cursor: pointer;
            transition: all 120ms;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #fff;
            padding: 0.5em;
            padding-bottom: 3.4em;
        }


        .mini-card .title {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 0.9em;
            position: absolute;
            left: 0.625em;
            bottom: 1.875em;
            font-weight: 400;
            color: #000;
        }

        .mini-card .price {
            font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
            font-size: 0.9em;
            position: absolute;
            left: 0.625em;
            bottom: 0.625em;
            color: #000;
        }

        .mini-card:hover::after {
            bottom: 0;
            opacity: 1;
        }

        .mini-card:active {
            transform: scale(0.98);
        }

        .image {
            background: rgb(241, 241, 241);
            width: 100%;
            height: 100%;
            display: grid;
            place-items: center;
        }
    </style>
    <jsp:include page="layouts/head.jsp"/>
    <title>Manos Mexicanas</title>

</head>

<body>
<jsp:include page="/layouts/nav.jsp"/>

<div id="carouselExampleAutoplaying" class="carousel slide micarrusel " data-bs-ride="carousel" data-bs-interval="3000">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="${pageContext.request.contextPath}/assets/img/F1.jpg" class="d-block" alt="...">
        </div>
        <div class="carousel-item">
            <img src="${pageContext.request.contextPath}/assets/img/F2.jpg" class="d-block" alt="...">
        </div>
        <div class="carousel-item">
            <img src="${pageContext.request.contextPath}/assets/img/F3.jpg" class="d-block" alt="...">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
            data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
            data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>


<section>
    <div class="container-fluid p-5" style="background-color: #f0f1ee;">
        <div class="container p-sm-5 p-lg-5">
            <section class="container">
                <div class="row">
                    <article class="col-12 col-lg-7">
                        <h2 class="display-4 mb-5 mt-lg-5">Descubre la belleza en cada hilo</h2>
                        <p class="lead text-sm-start text-md-start"><em>Sumérgete en un mundo de
                            posibilidades con nuestra amplia
                            colección de tejidos de alta calidad
                            cuidadosamente seleccionados para que puedas crear prendas únicas y
                            proyectos creativos que reflejen tu estilo y pasión por la moda.</em></p>
                        <a href="/user/register-view"
                           class="text-decoration-none text-dark link-animation"
                           style=" font-weight: 700; color:black">
                            <button class="btn btn-dark m-4"
                                    style="font-weight: 300; border-radius: 0; padding: 10px; width: 150px;">
                                Regístrate
                            </button>
                        </a>
                    </article>
                    <article class="col-lg-5 ps-lg-5 ps-sm-0">
                        <img src="${pageContext.request.contextPath}/assets/img/e9be2a1f1471feb0c1b18083309ea295.jpg"
                             alt="img-hilos"
                             class="">
                    </article>
                </div>
            </section>
        </div>
    </div>
    <div class="container mt-5 mb-5">
        <div class="card border-0 mt-5">
            <div class="container d-flex gap-3">
                <h5 class="card-title">Ofertas</h5>
                <small class="pt-1"><a href="">Ver todas las ofertas </a></small>
            </div>

            <div class="card-body">
                <div class="container">
                    <div class="row">
                        <div class="col d-flex justify-content-between">
                            <div class="mini-card">
                                <div class="image"></div>
                                <span class="title">Cool Chair</span>
                                <span class="price">$100</span>
                            </div>

                            <div class="mini-card">
                                <div class="image"></div>
                                <span class="title">Cool Chair</span>
                                <span class="price">$100</span>
                            </div>

                            <div class="mini-card">
                                <div class="image"></div>
                                <span class="title">Cool Chair</span>
                                <span class="price">$100</span>
                            </div>

                            <div class="mini-card">
                                <div class="image"></div>
                                <span class="title">Cool Chair</span>
                                <span class="price">$100</span>
                            </div>

                            <div class="mini-card">
                                <div class="image"></div>
                                <span class="title">Cool Chair</span>
                                <span class="price">$100</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

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
                   class="link-light link-underline-secondary">manos_mexicanas@gmail.com</a>
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
<jsp:include page="layouts/footer.jsp"/>
</body>
</html>