<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600&family=Raleway:wght@300;400;500&display=swap" rel="stylesheet">
<link rel="icon" href="${pageContext.request.contextPath}/assets/img/OIP.jpg">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav.css">
<style>
    .icon {
        color: white;
    }
    .icon:hover{
        color: #EAB543;
    }
    .icon-button {
        background: none;
        border: none;
        color: inherit;
        cursor: pointer;
    }
    .micarrusel{
        height: 500px !important;
    }
    .carousel-item{
        width: 100% !important;
        height: 500px !important;
    }
    .links{
        text-decoration: none;
        color: black;
    }

    .links:hover{

    }

    .cards-ofertas {
        position: relative;
        width: 13em;
        height: 20em;
        box-shadow: 0px 1px 13px rgba(0,0,0,0.1);
        cursor: pointer;
        transition: all 120ms;
        display: flex;
        align-items: center;
        justify-content: center;
        background: #fff;
        padding: 0.5em;
        padding-bottom: 3.4em;
    }

    .image {
        width: 100%;
        height: 100%;
        display: grid;
        place-items: center;
    }

    .cards-ofertas .title {
        margin-top: 2px !important;
        font-size: 0.9em;
        position: absolute;
        left: 0.625em;
        bottom: 1.5em;
        font-weight: 400;
        color: #000;
    }

    .cards-ofertas .price {
        font-size: 0.9em;
        position: absolute;
        left: 0.625em;
        bottom: 0.4em;
        color: #000;
    }

    .custom-icon{
        width: 16px;
        height: 16px;

    }

    .profile-img{
        margin-top: 8px !important;
        border-radius: 50%;
        width: 20%;
        height: 20%;
    }


</style>


