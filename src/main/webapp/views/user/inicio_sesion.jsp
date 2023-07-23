<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <jsp:include page="../../layouts/head.jsp"/>
    <title>Manos Mexicanas</title>
</head>

<body>

<jsp:include page="../../layouts/nav.jsp"/>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-7 col-12 mt-lg-4 mt-md-1 ">
            <h1 class="display-3 text-center fs-1 fw-bold mt-5">
                INICIAR SESIÓN
            </h1>

            <div class="container-fluid">
                <form class="text-center w-50 m-auto pt-4" novalidate action="/user/login" method="post">
                    <div class="m-4">
                        <input class="form-control" type="email" id="email" name="email" placeholder="E-mail" required>
                    </div>
                    <div class="m-4">
                        <input class="form-control" type="password" id="password" name="password"
                               placeholder="Contraseña" required>
                    </div>
                    <a class="text-decoration-none text-dark link-animation">
                        <button type="submit" class="btn btn-dark m-4"
                                style="font-weight: 500; border-radius: 0px; padding: 10px; width: 150px;">Iniciar
                            sesión
                        </button>
                    </a>
                </form>
                <div class="container">
                    <div class="col-12 text-center mt-5">
                        <p class="text-center">¿No tienes una cuenta? <a href="/user/register-view"
                                                                         class="text-decoration-none text-dark link-animation"
                                                                         style=" font-weight: 700; color:black">Regístrate</a>
                        </p>
                        <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#resetPassword">
                            Olvidé mi contraseña
                        </button>
                    </div>
                    <div class="modal fade" id="resetPassword" tabindex="-1"
                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="d-flex justify-content-end m-3">
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-header">
                                    <div class="container text-center">
                                        <h1 class="mb-4 fw-bolder">
                                            Recuperar contraseña
                                        </h1>
                                    </div>
                                </div>
                                <div class="modal-body">
                                    <div class="container text-center">
                                                    <span class="text-center lh-md " style="font-size: 1rem;">Introduce
                                                        la
                                                        dirección de
                                                        correo que usaste en el registro. <br> Te enviaremos un correo
                                                        con
                                                        instrucciones para
                                                        restablecer tu
                                                        contraseña.</span>
                                        <div class="mt-5">
                                            <form action="">
                                                <label class="fw-bold" style="font-size: 14px;">Introduce tu
                                                    correo electrónico</label>
                                            </form>
                                        </div>
                                        <div class="p-2">
                                            <input style="width: inherit; padding: 6px;" type="email"
                                                   name="user_email" id="email_password"
                                                   placeholder="Correo electrónico" required>
                                        </div>
                                        <button class="btn btn-dark m-5 m-lg-4"
                                                style="font-weight: 500; border-radius: 50px; padding: 10px; width: 100px;">
                                            Enviar
                                        </button>
                                    </div>
                                    <div class="modal-footer">
                                        <div>
                                            <p class="text-center pb-5 m-3 fw-bold"
                                               style="font-size: 1rem; font-weight: 400;">
                                                Si necesitas más ayuda, contacta con nosotros en <a
                                                    href="mailto:manos_mexicanas@gmail.com">manos_mexicanas@gmail.com</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-5 p-0 d-lg-block d-none">
            <img class="w-100 vh-100" src="${pageContext.request.contextPath}/assets/img/image 28.png">
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
<jsp:include page="../../layouts/footer.jsp"/>

</body>