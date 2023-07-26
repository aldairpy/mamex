<%--
  Created by IntelliJ IDEA.
  User: albertovd
  Date: 22/07/23
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="../../layouts/head.jsp"/>
    <title>Manos mexicanas</title>
</head>
<body>
<jsp:include page="../../layouts/nav.jsp"/>

<div class="container position-absolute top-50 start-50 translate-middle w-50">
    <div class="container">
        <div class="card mt-5">
            <div class="card-header">Modificación de usuario</div>
            <div class="card-body">
                <form id="user-form" class="needs-validation" novalidate action="/user/update" method="post">
                    <input hidden value="${user.status}" name="status">
                    <div class="from-group mb-3">
                        <div class="row">
                            <div class="col">
                                <label for="name" class="fw-bold">Nombre:</label>
                                <input type="text" name="name" id="name" class="form-control" value="${user.name_user}" required/>
                                <div class="invalid-feedback">Campo obligatorio</div>
                            </div>
                            <div class="col">
                                <label for="surname" class="fw-bold">Apellidos:</label>
                                <input type="text" name="surname" id="surname" class="form-control" value="${user.lastnames}" required/>
                                <div class="invalid-feedback">Campo obligatorio</div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group mb-3">
                        <div class="row">
                            <div class="col">
                                <label for="birthday" class="fw-bold">Fecha de nacimiento:</label>
                                <input type="date" name="birthday" id="birthday" class="form-control" value="${user.birthday}" required/>
                                <div class="invalid-feedback">Campo obligatorio</div>
                            </div>
                            <div class="col">
                                <label for="username" class="fw-bold">Sexo:</label>
                                <input type="text" name="username" id="username" class="form-control" value="${user.sex}" required/>
                                <div class="invalid-feedback">Campo obligatorio</div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group mb-3">
                        <div class="row">
                            <div class="col text-end">
                                <a href="/user/users" class="btn btn-outline-danger btn-sm">
                                    CANCELAR
                                </a>
                                <button type="submit" class="btn btn-outline-success btn-sm">
                                    ACEPTAR
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>
</div>

<jsp:include page="../../layouts/footer.jsp"/>
</body>
</html>