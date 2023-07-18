<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;700&display=swap');

        body {
            font-family: 'Inter', sans-serif !important;
        }

        .custom-file-upload {
            width: inherit;
            height: 30%;
            display: flex;
            flex-direction: column;
            gap: 20px;
            cursor: pointer;
            align-items: center;
            justify-content: center;
            border: 2px dashed #cacaca;
            background-color: rgba(255, 255, 255, 1);
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: 0px 48px 35px -48px rgba(0, 0, 0, 0.1);
        }

        .custom-file-upload .icon-upload {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .custom-file-upload .icon-upload svg {
            height: 80px;
            fill: rgba(75, 85, 99, 1);
        }

        .custom-file-upload .text {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .custom-file-upload .text span {
            font-weight: 400;
            color: rgba(75, 85, 99, 1);
        }

        .custom-file-upload input {
            display: none;
        }

    </style>
    <link rel="icon" href="../../assets/img/OIP.jpg">
    <link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../assets/css/styles.css">
    <script src="https://unpkg.com/feather-icons"></script>
    <title>MAMEX</title>
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
        <div class="card mt-4">
            <h6 class="text-start mt-4 ms-3 fw-bold">Información</h6>

            <div class="card-body">
                <div class="container">
                    <div class="row d-flex ">
                        <div class="col-sm-12 col-lg-6 col-md-7">
                            <h4></h4>
                            <div class="container">
                                <small>Para comenzar a vender, todo lo que necesitas es un título,
                                    precio e imagen.</small>
                                <small>Dale a tu producto un título breve y claro. 50-60 caracteres es la longitud
                                    recomendada.</small>
                                <form action="" class="mt-3">
                                    <small class="fw-bold">Título*</small>
                                    <input type="text" class="form-control w-50 mb-2" placeholder="Gorro, bolso..."
                                           aria-label="Title">
                                    <br>
                                    <small>Da a tu producto una descripción breve y clara. <br> 120-160 caracteres es la
                                        longitud
                                        recomendada para los motores de búsqueda.
                                    </small>
                                    <small class="fw-bold">Descripción*</small>
                                    <input type="text" class="form-control w-75 mb-2"
                                           placeholder="Descripción corta de tu producto"
                                           aria-label="Description">
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6 col-md-5">
                            <div class="container w-50 mt-3">
                                <label class="input-group-text" for="inputGroupSelect01">Categoría</label>
                                <select class="form-select" id="inputGroupSelect01">
                                    <option selected>Elegir</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                                <span class="input-group-text mt-4" id="basic-addon1">Precio</span>
                                <input type="text" class="form-control" placeholder="$" aria-label="Price"
                                       aria-describedby="basic-addon1">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="card mt-4" style="background-color: #f6f6f6;">
                <div class="card-header text-start">
                    <h6 class="card-title fw-bold">Imágenes</h6>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table caption-top">
                                <caption>Agrega imágenes a tu producto. Solo se aceptan 3 por producto.</caption>
                                <thead>
                                <tr>
                                    <th scope="col">Imagen</th>
                                    <th scope="col">Tamaño</th>
                                    <th scope="col"><i data-feather="trash"></i></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th><img src="../../assets/img/OIP.jpg" alt="product-img" height="100" width="100"></th>
                                    <td>4.7 MB</td>
                                    <td><input class="form-check-input ms-1" type="checkbox" value="" aria-label="Checkbox for following text input"></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="card-footer text-center">
                        <label class="custom-file-upload" for="file">
                            <div class="icon-upload">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="" viewBox="0 0 24 24">
                                    <g stroke-width="0" id="SVGRepo_bgCarrier"></g>
                                    <g stroke-linejoin="round" stroke-linecap="round"
                                       id="SVGRepo_tracerCarrier"></g>
                                    <g id="SVGRepo_iconCarrier">
                                        <path fill=""
                                              d="M10 1C9.73478 1 9.48043 1.10536 9.29289 1.29289L3.29289 7.29289C3.10536 7.48043 3 7.73478 3 8V20C3 21.6569 4.34315 23 6 23H7C7.55228 23 8 22.5523 8 22C8 21.4477 7.55228 21 7 21H6C5.44772 21 5 20.5523 5 20V9H10C10.5523 9 11 8.55228 11 8V3H18C18.5523 3 19 3.44772 19 4V9C19 9.55228 19.4477 10 20 10C20.5523 10 21 9.55228 21 9V4C21 2.34315 19.6569 1 18 1H10ZM9 7H6.41421L9 4.41421V7ZM14 15.5C14 14.1193 15.1193 13 16.5 13C17.8807 13 19 14.1193 19 15.5V16V17H20C21.1046 17 22 17.8954 22 19C22 20.1046 21.1046 21 20 21H13C11.8954 21 11 20.1046 11 19C11 17.8954 11.8954 17 13 17H14V16V15.5ZM16.5 11C14.142 11 12.2076 12.8136 12.0156 15.122C10.2825 15.5606 9 17.1305 9 19C9 21.2091 10.7909 23 13 23H20C22.2091 23 24 21.2091 24 19C24 17.1305 22.7175 15.5606 20.9844 15.122C20.7924 12.8136 18.858 11 16.5 11Z"
                                              clip-rule="evenodd" fill-rule="evenodd"></path>
                                    </g>
                                </svg>
                            </div>
                            <div class="text">
                                <span>Haz clic para agregar una imagen</span>
                            </div>
                            <input type="file" id="file">
                        </label>
                        <div class="text-end mt-3 me-3">
                            <button class="btn btn-outline-dark">Publicar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</main>


<script src="../../assets/js/bootstrap.bundle.min.js"></script>
<jsp:include page="../../layouts/footer.jsp"/>
</body>
</html>
