<%@ page import="mx.edu.utez.mamex.models.user.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% User user = (User) request.getAttribute("user"); %>

<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style>
        body {
            background-color: #EEEEEE !important;
        }

        .card {
            width: 760px;
            height: 50px;
        }
    </style>
    <jsp:include page="../../layouts/head.jsp"/>
    <title>Mi perfil</title>
</head>
<body>
<jsp:include page="../../layouts/nav.jsp"/>

<main>
    <div class="container mt-3">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-12 col-lg-12 text-center mb-2">
                    <h2>Datos personales</h2>
                </div>
            </div>
            <div class="row justify-content-lg-center justify-content-md-center">
                <div class="col-4 col-md-8 col-lg-6">
                    <div class="card box-shadow-1" style="border-radius: 0">
                        <div class="card-title text-center"><img class="profile-img" src="../../assets/img/OIP.jpg"
                                                                 alt="profile picture"></div>
                        <div class="card-body m-0 p-0">
                            <div class="table-responsive-sm">
                                <table class="table table-hover mb-0">
                                    <input hidden value="${user.id}" name="id"/>
                                    <tbody>
                                    <tr>
                                        <th>Nombre:</th>
                                        <td>
                                            <c:out value="${user.names}"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>Apellidos:</th>
                                        <td>
                                            <c:out value="${user.lastnames}"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>Sexo:</th>
                                        <td>
                                            <c:out value="${user.gender}"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>Cumpleaños:</th>
                                        <td>
                                            <c:out value="${user.birthday}"/>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <form action="" class="text-end mb-0">
                                <a href="${pageContext.request.contextPath}/user/update_view">
                                    <button class="btn btn-outline-dark m-2"><small>Editar </small><i class="custom-icon" data-feather="arrow-right"></i></button>
                                </a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
<jsp:include page="../../layouts/footer.jsp"/>
</body>
</html>
