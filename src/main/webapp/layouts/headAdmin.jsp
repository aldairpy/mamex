<%--
  Created by IntelliJ IDEA.
  User: albertovazquez
  Date: 09/07/23
  Time: 7:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="icon" href="${pageContext.request.contextPath}/assets/img/OIP.jpg">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/styles.css">

<style>
    @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;700&display=swap');

    body {
        font-family: 'Inter', sans-serif !important;
    }

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

</style>

