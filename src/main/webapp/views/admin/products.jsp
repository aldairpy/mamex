<%--
  Created by IntelliJ IDEA.
  User: albertovazquez
  Date: 09/07/23
  Time: 6:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;700&display=swap');

        body {
            font-family: 'Inter', sans-serif !important;
        }
    </style>
    <link rel="icon" href="../../assets/img/OIP.jpg">
    <link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../assets/css/styles.css">
    <script src="https://unpkg.com/feather-icons"></script>
    <title>Productos</title>
</head>
<body>
<nav class="navbar sticky-top navbar-expand-lg bg-white">
    <div class="container">
        <a class="navbar-brand" href="./inicio.jsp">
            <img src="../../assets/img/OIP.jpg" alt="Bootstrap" width="34" height="34" style="border-radius: 50px;">
        </a>
        <p class="pt-3 ms-5" style="font-size: 20px;">Producto</p>
        <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
                aria-label="Toggle navigation">
            <button class="btn d-lg-none ms-2 ps-5" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasResponsive" aria-controls="offcanvasResponsive"><i
                    data-feather="sidebar"></i></button>
        </button>
        <div class="navbar-collapse collapse" id="navbarNavAltMarkup">
            <div class="container d-flex justify-content-center">
                <div class="group">
                    <svg class="icon" aria-hidden="true" viewBox="0 0 24 24">
                        <g>
                            <path
                                    d="M21.53 20.47l-3.66-3.66C19.195 15.24 20 13.214 20 11c0-4.97-4.03-9-9-9s-9 4.03-9 9 4.03 9 9 9c2.215 0 4.24-.804 5.808-2.13l3.66 3.66c.147.146.34.22.53.22s.385-.073.53-.22c.295-.293.295-.767.002-1.06zM3.5 11c0-4.135 3.365-7.5 7.5-7.5s7.5 3.365 7.5 7.5-3.365 7.5-7.5 7.5-7.5-3.365-7.5-7.5z">
                            </path>
                        </g>
                    </svg>
                    <input placeholder="Buscar" type="search" class="input">
                </div>
            </div>
            <img class="d-sm-none d-lg-block" src="../../assets/img/Rancho_Cucamonga_Tree_16.png" width="34" height="34"
                 style="border-radius: 50px;">
            <p class="pt-3 ms-3 d-none d-lg-block">Administrador</p>

        </div>
    </div>
</nav>

<div class="offcanvas-lg offcanvas-start" tabindex="-1" id="offcanvasResponsive"
     aria-labelledby="offcanvasResponsiveLabel">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasResponsiveLabel">Menú</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasResponsive"
                aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <div class="sidebar">
            <ul class="list-unstyled p-5 mt-5" style="font-size: 14px;">
                <li class="mb-3"><a href="/user/admin/dashboard" class="nav-link"><i data-feather="home"></i><span class="ps-3">Inicio</span></a>
                </li>
                <li class="mb-3"><a href="" class="nav-link"><i data-feather="shopping-cart"></i><span class="ps-3">Órdenes</span></a>
                </li>
                <li class="mb-3"><a href="/user/admin/products" class="nav-link"><i data-feather="tag"></i><span class="ps-3">Productos</span></a>
                </li>
                <li class="mb-3"><a href="" class="nav-link"><i data-feather="users"></i><span
                        class="ps-3">Usuarios</span></a></li>
                <li class="mb-3"><a href="" class="nav-link"><i data-feather="dollar-sign"></i><span
                        class="ps-3">Ventas</span></a></li>
                <li class="mb-3"><a href="" class="nav-link"><i data-feather="settings"></i><span
                        class="ps-3">Ajustes</span></a></li>
            </ul>
            <form action="/user/unlogin" method="post" id="unlogin">
                <button class="btn bg-dark ms-5" style="color: white;">Cerrar sesión</button>
            </form>
        </div>
    </div>
</div>

<main>
    <div class="container-main">
        <div class="card text-end">
            <div class="card-title pt-4 pe-3">
                <a style="text-decoration: none; color:black" href="/user/admin/create-products">
                    <small>Agregar productos</small><button class="btn btn-success btn-sm btn-outline pt-2 ms-2"><i data-feather="plus"></i></button>
                </a>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped caption-top">
                        <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Producto</th>
                            <th scope="col">Precio</th>
                            <th scope="col">Categoría</th>
                            <th scope="col">Disponibilidad</th>
                            <th scope="col">Inventario</th>
                            <th scope="col">Acciones</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Producto 1</td>
                            <td>$100.00</td>
                            <td>Categoría 1</td>
                            <td>Disponible</td>
                            <td>100</td>
                            <td>
                                <a href="./editar_producto.jsp" style="text-decoration: none">
                                    <button class="btn btn-primary btn-sm btn-outline"><i data-feather="edit"></i></button>
                                </a>
                                <button class="btn btn-danger btn-sm btn-outline"><i data-feather="trash"></i></button>
                            </td>

                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Producto 2</td>
                            <td>$ 200.00</td>
                            <td>Categoría 2</td>
                            <td>Disponible</td>
                            <td>200</td>
                            <td>
                                <a href="./editar_producto.jsp" style="text-decoration: none">
                                    <button class="btn btn-primary btn-sm btn-outline"><i data-feather="edit"></i></button>
                                </a>
                                <button class="btn btn-danger btn-sm btn-outline"><i data-feather="trash"></i></button>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>


    </div>
</main>

<script>
    feather.replace();
</script>
<script src="../../assets/js/bootstrap.bundle.min.js"></script>

</body>
</html>
