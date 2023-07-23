<%--
  Created by IntelliJ IDEA.
  User: albertovd
  Date: 18/07/23
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
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
    <div class="container position-absolute top-50 start-50 translate-middle w-50">
        <div class="container">
            <h6>Datos personales</h6>
            <div class="card border-0 box-shadow-1">
                <c:forEach var="user" items="${users}" varStatus="status">
                    <table class="table">
                        <tbody>
                        <tr>
                            <td><s:out value="${user.name_user}"/> <s:out value="${user.lastname}"/></td>
                            <td><s:out value="${user.email}"/></td>
                            <td><s:out value="${user.sex}"/></td>
                            <td><s:out value="${user.birthday}"/></td>
                        </tr>
                        </tbody>
                    </table>
                </c:forEach>
            </div>
        </div>
    </div>
</main>

<jsp:include page="../../layouts/footer.jsp"/>
</body>
</html>
