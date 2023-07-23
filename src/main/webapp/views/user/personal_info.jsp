<%--
  Created by IntelliJ IDEA.
  User: albertovd
  Date: 18/07/23
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style>
        body {
            background-color: #EEEEEE !important;
        }

        .card {
            width: 600px;
            height: 50px;
        }
    </style>
    <jsp:include page="../../layouts/head.jsp"/>
    <title>Mi perfil</title>
</head>
<body>
<jsp:include page="../../layouts/nav.jsp"/>

<main>
    <div class="container-fluid ms-0 mt-3">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center mb-2">
                    <h2>Datos personales</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-4 col-md-8 col-lg-6">
                    <div class="card box-shadow-1">
                        <div class="card-title text-center"><img class="profile-img" src="../../assets/img/OIP.jpg" alt="profile picture"></div>
                        <div class="card-body m-0 p-0">
                            <div class="table-responsive">
                                <table class="table mb-0">
                                    <tbody>
                                    <tr>
                                        <th>Nombre:</th>
                                        <td>Alberto Vázquez Díaz</td>
                                    </tr>
                                    <tr>
                                        <th>Correo:</th>
                                        <td>albertovd41@gmail.com</td>
                                    </tr>
                                    <tr>
                                        <th>Sexo:</th>
                                        <td>Masculino</td>
                                    </tr>
                                    <tr>
                                        <th>Cumpleaños:</th>
                                        <td>07/02/2002</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <form action="" class="mb-0 text-end">
                                <a href="edit-info.jsp">ad</a>
                                <button class="btn btn-outline-dark m-2"><small>Editar </small><i class="custom-icon" data-feather="arrow-right"></i></button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</main>



<jsp:include page="../../layouts/footer.jsp"/>
</body>
</html>
