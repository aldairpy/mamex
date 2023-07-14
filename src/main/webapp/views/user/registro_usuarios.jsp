<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
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
    <title>Manos Mexicanas</title>
</head>

<body>
<jsp:include page="../../layouts/nav.jsp"/>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-7 col-12 mt-lg-4 mt-md-5 mt-xs-1">
            <h1 class="display-3 text-center fs-1 fw-bold mt-5">
                CREAR CUENTA
            </h1>
            <div class="container">
                <form id="register-form" class="text-center w-50 m-auto fs-1 pt-3" novalidate action="/user/register"
                      method="post">
                    <div class="m-4">
                        <input class="form-control" type="text" name="names" id="names" placeholder="Nombre(s)"
                               required>
                    </div>
                    <div class="m-4">
                        <input class="form-control" type="text" name="lastnames" id="lastnames" placeholder="Apellidos"
                               required>
                    </div>
                    <div class="m-4">
                        <input class="form-control" type="email" name="email" id="email" placeholder="E-mail" required>
                    </div>
                    <div class="m-4">
                        <input class="form-control" type="password" name="password" id="password"
                               placeholder="Contraseña" required>
                    </div>


                    <button id="btn-registro" type="submit" class="btn btn-dark m-4"
                            style="font-weight: 500; border-radius: 0px; padding: 10px; width: 150px;">Regístrate
                    </button>

                </form>


                <div class="container">
                    <div class="col-12 text-center">
                        <p class="text-center mt-5">¿Ya tienes una cuenta? <a href="/user/login"
                                                                              class="text-decoration-none text-dark link-animation"
                                                                              style=" font-weight: 700; color:black">Inicia
                            sesión</a></p>
                    </div>

                </div>

            </div>
        </div>
        <div class="col-lg-5 col-12 p-0 d-none d-md-none d-lg-block d-md-block">
            <img class="w-100 vh-100" src="${pageContext.request.contextPath}/assets/img/image 27.png" alt="imagen_registro">
        </div>

    </div>


</div>




<script src="../../assets/js/bootstrap.bundle.min.js"></script>
<jsp:include page="../../layouts/footer.jsp"/>

<script>
    (function () {
        const form = document.getElementById("register-form");
        form.addEventListener("submit", function (event) {
            if (!form.checkValidity()) { //Valida que los campos oligatorios esten correctamente llenados.
                event.preventDefault();
                event.stopPropagation();
            }
            form.classList.add("was-validated");
        }, false);
    })();
</script>
</body>

</html>