<%--
  Created by IntelliJ IDEA.
  User: albertovazquez
  Date: 11/07/23
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600&family=Raleway:wght@300;400;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="../../assets/css/bootstrap.min.css" />
  <link rel="stylesheet" href="../../assets/css/nav.css" />
  <link rel="icon" href="../../assets/img/OIP.jpg">
  <jsp:include page="../../layouts/head.jsp"/>
  <title>Manos Mexicanas</title>
</head>
<body>
<jsp:include page="../../layouts/nav.jsp"/>

<div class="container-fluid">
  <div class="col">
    <div class="card mt-5">
      <div class="card-header">Modificación de usuario</div>
      <div class="card-body">
        <form id="user-form" class="needs-validation" novalidate action="/user/update" method="post">
          <input hidden value="${user.id}" name="id"/>
          <input hidden value="${user.status}" name="status">
          <div class="from-group mb-3">
            <div class="row">
              <div class="col">
                <label for="name" class="fw-bold">Nombre:</label>
                <input type="text" name="name" id="name" class="form-control" value="${user.name}" required/>
                <div class="invalid-feedback">Campo obligatorio</div>
              </div>
              <div class="col">
                <label for="surname" class="fw-bold">Primer apellido:</label>
                <input type="text" name="surname" id="surname" class="form-control" value="${user.surname}" required/>
                <div class="invalid-feedback">Campo obligatorio</div>
              </div>
              <div class="col">
                <label for="lastname" class="fw-bold">Segundo apellido:</label>
                <input type="text" name="lastname" id="lastname" class="form-control" value="${user.lastname}" required/>
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
                <label for="username" class="fw-bold">Nombre de usuario:</label>
                <input type="text" name="username" id="username" class="form-control" value="${user.username}" required/>
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
