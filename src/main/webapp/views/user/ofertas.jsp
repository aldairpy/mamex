<%--
  Created by IntelliJ IDEA.
  User: Alberto
  Date: 26/06/2023
  Time: 06:11 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600&family=Raleway:wght@300;400;500&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="../../assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../../assets/css/nav.css"/>
    <link rel="icon" href="../../assets/img/OIP.jpg">
    <jsp:include page="../../layouts/head.jsp"/>
    <style>
        .card{
            width: 284px;
        }
    </style>
    <title>Ofertas</title>
</head>
<body>
<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark ">
    <div class="container">
        <a class="navbar-brand" href="../../index.jsp"><img src="../../assets/img/OIP.jpg" alt="logo"/></a>
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
                    <li><a href="./ofertas.jsp" class="nav-link">Ofertas</a></li>
                    <li><a href="" class="nav-link">Novedades</a></li>
                    <li><a href="./contacto.jsp" class="nav-link">Contacto</a></li>
                    <li><a href="" class="nav-link">Nosotros</a></li>
                </ul>
            </div>
            <div class="container d-flex justify-content-lg-end justify-content-center">
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
    <div class="container text-center mb-sm-4">
        <h1>¡OFERTAS!</h1>
        <span>¡Encuentra precios increíbles cada día!</span>
    </div>

    <div class="container-fluid p-md-5" style="background-color: #e7e7e7">
    <div class="container ps-md-5 ms-md-5 ">
        <div class="row row-cols-1 row-cols-md-3 g-3">
            <div class="col">
                <div class="card h-100">
                    <img src="../../assets/img/OIP.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h6 class="card-title">Card title</h6>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="../../assets/img/OIP.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h6 class="card-title">Card title</h6>
                        <p class="card-text">This is a short card.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="../../assets/img/OIP.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h6 class="card-title">Card title</h6>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="../../assets/img/OIP.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h6 class="card-title">Card title</h6>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>



    </div>
</div>


<script src="../../assets/js/bootstrap.bundle.min.js"></script>
<jsp:include page="../../layouts/footer.jsp"/>
</body>
</html>
