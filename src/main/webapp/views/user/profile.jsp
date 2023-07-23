<%--
  Created by IntelliJ IDEA.
  User: albertovazquez
  Date: 11/07/23
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <jsp:include page="../../layouts/head.jsp"/>
    <title>Manos Mexicanas</title>
</head>
<body>
<jsp:include page="../../layouts/nav.jsp"/>

<div class="container mt-5">
    <div class="container text-center w-75 mt-3">
        <c:forEach var="user" items="${users}" >
            <img src="${pageContext.request.contextPath}/assets/img/OIP.jpg" alt="Profile picture">
            <p>${user.name_user}</p>
        </c:forEach>
        <div class="container mb-3 w-100">
            <div class="row justify-content-center">
                <div class="col-12 col-md-6 col-lg-4 d-flex justify-content-center">
                    <a href="#" class="links">
                        <div class="card">
                            <div class="row justify-content-center mb-3">
                                <img src="../../assets/svgs/package-box-svgrepo-com.svg" alt="" style="width: 80px; height: 80px">
                                <h6>Historial de pedidos</h6>
                                <small>Consulta todos tus pedidos</small>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-12 col-md-6 col-lg-4 d-flex justify-content-center">
                    <a href="#" class="links">
                        <div class="card">
                            <div class="row justify-content-center mb-3">
                                <img src="${pageContext.request.contextPath}/assets/svgs/unlock-filled-svgrepo-com.svg" alt="" style="width: 80px; height: 80px">
                                <h6>Inicio de sesión y seguridad</h6>
                                <small>Cambiar correo electrónico y contraseña</small>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-12 col-md-6 col-lg-4 d-flex justify-content-center">
                    <a href="../../views/user/personal_info.jsp" class="links">
                        <div class="card">
                            <div class="row justify-content-center mb-3">
                                <img src="../../assets/svgs/user-information-svgrepo-com.svg" alt="" style="width: 80px; height: 80px">
                                <h6>Información personal</h6>
                                <small>Configura tus datos personales</small>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="../../layouts/footer.jsp"/>
</body>
</html>
