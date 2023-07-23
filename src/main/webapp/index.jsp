<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <jsp:include page="layouts/head.jsp"/>
    <link rel="icon" href="${pageContext.request.contextPath}/assets/img/OIP.jpg">
    <title>Manos Mexicanas</title>
</head>

<body>
<jsp:include page="/layouts/nav.jsp"/>
<div class="container-fluid p-0 m-0">
    <div id="carouselExampleAutoplaying" class="carousel slide micarrusel w-100" data-bs-ride="carousel" data-bs-interval="3000">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="${pageContext.request.contextPath}/assets/img/F1.jpg" class="d-block img-fluid w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/assets/img/F2.jpg" class="d-block img-fluid w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/assets/img/F3.jpg" class="d-block img-fluid w-100" alt="...">
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
</div>

<div class="container-fluid p-5">
    <div class="container p-sm-5 p-lg-5">
        <section class="container">
            <div class="row">
                <article class="col-12 col-lg-7">
                    <h2 class="display-4 mb-5 mt-5">Descubre la belleza en cada hilo</h2>
                    <p class="lead text-sm-start text-md-start">Sumérgete en un mundo de
                        posibilidades con nuestra amplia
                        colección de tejidos de alta calidad
                        cuidadosamente seleccionados para que puedas crear prendas únicas y
                        proyectos creativos que reflejen tu estilo y pasión por la moda.</em></p>
                    <a href="/user/register-view" style="text-decoration: none; color: whitesmoke;">
                        <button class="btn btn-dark m-4"
                                style="font-weight: 300; border-radius: 0; padding: 10px; width: 150px;">Regístrate</button></a>
                </article>
                <article class="col-12 col-lg-5 ps-lg-5 ps-sm-0">
                    <img src="${pageContext.request.contextPath}/assets/img/e9be2a1f1471feb0c1b18083309ea295.jpg" alt="img-hilos" class="img-fluid">
                </article>
            </div>
        </section>
    </div>
</div>

<section>
    <div class="container mb-5">
        <h6 class="mb-3">Ofertas</h6>
        <a href="${pageContext.request.contextPath}/views/user/product_view.jsp" class="links">
            <div class="cards-ofertas">
                <div class="image">
                    <img src="${pageContext.request.contextPath}/assets/img/image%2028.png" alt="">
                </div>
                <span class="title">Bolso de mano</span>
                <span class="price">$100</span>
            </div>
        </a>

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



<jsp:include page="layouts/footer.jsp"/>
</body>
</html>