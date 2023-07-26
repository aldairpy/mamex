<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>


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

        /* New styles for file upload */
        .file-input {
            display: none;
        }

        .file-input-label {
            padding: 10px;
            color: white;
            background-color: #4CAF50;
            cursor: pointer;
        }

        .file-input-label:hover {
            background-color: #45a049;
        }

        .image-preview {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: center;
            width: 330px;
            height: auto;
            border: 1px solid #ddd;
            margin-top: 15px;
        }
        .image-preview div {
            width: 100px;
            height: 100px;
            border: 1px solid #000;
            margin: 10px;
        }
        .image-preview img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }


    </style>
    <link rel="icon" href="${pageContext.request.contextPath}/assets/img/OIP.jpg">
    <jsp:include page="../../layouts/headAdmin.jsp"/>
    <title>MAMEX</title>
</head>
<body>
<nav class="navbar sticky-top navbar-expand-lg bg-white">
    <div class="container">
        <a class="navbar-brand" href="./inicio.jsp">
            <img src="${pageContext.request.contextPath}/assets/img/OIP.jpg" alt="Bootstrap" width="34" height="34"
                 style="border-radius: 50px;">
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
            <h6 class="text-start mt-4 ms-3 fw-bold">Nuevo Producto</h6>

            <div class="card-body">
                <div class="container">
                    <div class="row d-flex ">
                        <div class="col-sm-12 col-lg-6 col-md-7">
                            <h4></h4>
                            <div class="container">
                                <small>Para agregar un nuevo producto, por favor completa todos los campos requeridos a continuación.</small>
                                <form action="${pageContext.request.contextPath}/admin/crear_producto" method="post" class="mt-3" enctype="multipart/form-data">
                                    <small class="fw-bold">Nombre del Producto*</small>
                                    <input type="text" class="form-control w-50 mb-2" name="name" placeholder="Nombre del Producto" aria-label="Nombre del Producto" required>
                                    <br>
                                    <small class="fw-bold">Descripción del Producto*</small>
                                    <input type="text" class="form-control w-75 mb-2" name="description" placeholder="Descripción del Producto" aria-label="Descripción del Producto" required>
                                    <br>
                                    <small class="fw-bold">Color*</small>
                                    <input type="text" class="form-control w-75 mb-2" name="color" placeholder="Color" aria-label="Color del Producto" required>
                                    <br>
                                    <small class="fw-bold">Precio del Producto*</small>
                                    <input type="text" class="form-control w-50 mb-2" name="unitPrice" placeholder="Precio del Producto" aria-label="Precio del Producto" required>
                                    <br>
                                    <small class="fw-bold">Cantidad en Stock*</small>
                                    <input type="number" class="form-control w-50 mb-2" name="stock" placeholder="Cantidad en Stock" aria-label="Cantidad en Stock" required>
                                    <br>
                                    <small class="fw-bold">Notas*</small>
                                    <input type="text" class="form-control w-75 mb-2" name="notes" placeholder="Notas adicionales" aria-label="Notas adicionales" required>
                                    <br>
                                    <small class="fw-bold">Fecha de Creación*</small>
                                    <input type="date" class="form-control w-50 mb-2" name="createDate" aria-label="Fecha de Creación" required>
                                    <br>
                                    <small class="fw-bold">Fecha de Actualización*</small>
                                    <input type="date" class="form-control w-50 mb-2" name="updateDate" aria-label="Fecha de Actualización" required>
                                    <br>
                                    <div>
                                        <small class="fw-bold">Imágenes del producto*</small>
                                        <div>
                                            <small class="fw-bold">Imagen del producto 1*</small>
                                            <input type="file" id="file-input1" name="image1" accept="image/*">
                                            <div id="image-preview1" class="image-preview"></div>
                                        </div>
                                        <div>
                                            <small class="fw-bold">Imagen del producto 2*</small>
                                            <input type="file" id="file-input2" name="image2" accept="image/*">
                                            <div id="image-preview2" class="image-preview"></div>
                                        </div>
                                        <div>
                                            <small class="fw-bold">Imagen del producto 3*</small>
                                            <input type="file" id="file-input3" name="image3" accept="image/*">
                                            <div id="image-preview3" class="image-preview"></div>
                                        </div>
                                    </div>
                                    <input type="submit" class="btn btn-primary" value="Agregar Producto">
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<%@ include file="../../layouts/footer.jsp" %>

</body>
<script>
    document.getElementById('file-input1').addEventListener('change', function(e) {
        previewImage(e, 'image-preview1');
    });
    document.getElementById('file-input2').addEventListener('change', function(e) {
        previewImage(e, 'image-preview2');
    });
    document.getElementById('file-input3').addEventListener('change', function(e) {
        previewImage(e, 'image-preview3');
    });
    function previewImage(e, previewAreaId) {
        let previewArea = document.getElementById(previewAreaId);

        // Clear the preview area before adding new image
        while(previewArea.firstChild) {
            previewArea.firstChild.remove();
        }

        let file = e.target.files[0];

        if(!file.type.startsWith('image/')){ return }

        let img = document.createElement('img');
        img.classList.add('obj');
        img.file = file;

        let container = document.createElement('div');
        container.appendChild(img);
        previewArea.appendChild(container);

        // Read the file
        let reader = new FileReader();
        reader.onload = (function(aImg) {
            return function(e) {
                aImg.src = e.target.result;
            };
        })(img);
        reader.readAsDataURL(file);
    }
</script>
</html>



