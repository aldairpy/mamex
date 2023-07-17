<%--
  Created by IntelliJ IDEA.
  User: albertovazquez
  Date: 11/07/23
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style>
        .links a{
            text-decoration: none;
        }
        .card_custom {
            position: relative;
            overflow: hidden;
        }

        .card_custom::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.1);
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .card_custom:hover::before {
            opacity: 1;
        }
    </style>
    <jsp:include page="../../layouts/head.jsp"/>
    <title>Manos Mexicanas</title>
</head>
<body>
<jsp:include page="../../layouts/nav.jsp"/>

<div class="container mt-3 ps-5">
    <h4>Mi cuenta</h4>
</div>
<div class="container mt-1">
    <div class="row">
        <div class="col-12">
            <div class="card" style="border: none; !important">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <img class="foto_perfil mb-2 mt-3" src="${pageContext.request.contextPath}/assets/img/OIP.jpg"
                             alt="Profile picture" height="150" width="150" style="border-radius: 50%">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h4 class="card-title">Nombre</h4>
                        <small>Dirección</small>
                    </div>
                </div>
                <div class="container links">
                    <div class="row mb-3 m-5 text-center">
                        <div class="col-sm-3 col-lg-3 mb-3">
                            <a href="#" class="card card_custom">
                                <div class="card-body">
                                    <img src="${pageContext.request.contextPath}/assets/svgs/package-box-svgrepo-com.svg"
                                         alt="">
                                    <h6 class="card-title">Tus pedidos</h6>
                                    <small class="card-text">Encuentra tu historial de pedidos</small>

                                </div>
                            </a>
                        </div>
                        <div class="col-sm-3 col-lg-3 mb-3">
                            <a href="#" class="card card_custom">
                                <div class="card-body">
                                    <img src="${pageContext.request.contextPath}/assets/svgs/unlock-filled-svgrepo-com.svg"
                                         alt="">
                                    <h6 class="card-title">Inicio de sesión y seguridad</h6>
                                    <small class="card-text">Cambiar correo electrónico, contraseña y número
                                        telefónico</small>
                                </div>
                            </a>
                        </div>
                        <div class="col-sm-3 col-lg-3 mb-3">
                            <a href="#" class="card card_custom">
                                <div class="card-body">
                                    <img src="${pageContext.request.contextPath}/assets/svgs/placeholder-maps-and-location-svgrepo-com.svg"
                                         alt="">
                                    <h6 class="card-title">Direcciones</h6>
                                    <small class="card-text">Editar direcciones para tus pedidos</small>
                                </div>
                            </a>
                        </div>
                        <div class="col-sm-3 col-lg-3 mb-3">
                            <a href="#" class="card card_custom">
                                <div class="card-body">
                                    <img src="${pageContext.request.contextPath}/assets/svgs/user-information-svgrepo-com.svg"
                                         alt="">
                                    <h6 class="card-title">Información personal</h6>
                                    <small class="card-text">La información que nos ayuda a saber más de ti</small>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


<jsp:include page="../../layouts/footer.jsp"/>
</body>
</html>
