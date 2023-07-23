<%--
  Created by IntelliJ IDEA.
  User: albertovazquez
  Date: 14/07/23
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <jsp:include page="/layouts/head.jsp"/>
    <title>Sobre nosotros</title>
</head>
<body>
    <jsp:include page="/layouts/nav.jsp"/>
    <main>
        <section>
            <div class="container-fluid pb-5">
                <div class="container mt-5">
                    <h2 class="display-5 text-center">Explora nuestra gama de exquisitos tejidos</h2>
                    <p class=" mt-4 text-center text-sm-center text-md-center m-4"
                    >Desde suaves algodones hasta lujosas
                        sedas y duraderos linos, encontrarás la calidad y variedad que necesitas para dar vida a tus ideas.
                        Descubre la esencia de la elegancia,
                        la comodidad y la creatividad en cada fibra, y deja que tus proyectos tejidos cuenten historias
                        únicas en
                        cada puntada</p>
                </div>


                <div class="container pt-5 mt-5" style="font-family: 'Raleway', sans-serif; font-weight: 500;">
                    <div class="row justify-content-evenly">
                        <div class="col-12 col-lg-5">
                            <div class="circle">
                                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-droplet"
                                     width="28"
                                     height="28" viewBox="0 0 24 24" stroke-width="2" stroke="#ffffff" fill="none"
                                     stroke-linecap="round"
                                     stroke-linejoin="round">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                    <path
                                            d="M7.502 19.423c2.602 2.105 6.395 2.105 8.996 0c2.602 -2.105 3.262 -5.708 1.566 -8.546l-4.89 -7.26c-.42 -.625 -1.287 -.803 -1.936 -.397a1.376 1.376 0 0 0 -.41 .397l-4.893 7.26c-1.695 2.838 -1.035 6.441 1.567 8.546z"/>
                                </svg>
                            </div>
                            <div class="container text-center">
                                <p class="fs-lg-5">Nuestra tienda te brinda una experiencia refrescante y revitalizante. Al
                                    igual que el
                                    agua que sacia tu
                                    sed,
                                    ofrecemos productos que satisfacen tus necesidades y te ayudan a dar vida a tus
                                    proyectos.
                                </p>
                            </div>
                        </div>

                        <div class="col-12 col-lg-5">
                            <div class="circle">
                                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-sun" width="28"
                                     height="28"
                                     viewBox="0 0 24 24" stroke-width="2" stroke="#ffffff" fill="none"
                                     stroke-linecap="round"
                                     stroke-linejoin="round">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                    <path d="M12 12m-4 0a4 4 0 1 0 8 0a4 4 0 1 0 -8 0"/>
                                    <path
                                            d="M3 12h1m8 -9v1m8 8h1m-9 8v1m-6.4 -15.4l.7 .7m12.1 -.7l-.7 .7m0 11.4l.7 .7m-12.1 -.7l-.7 .7"/>
                                </svg>
                            </div>
                            <div class="container text-center">
                                <p class="fs-lg-5">
                                    En nuestra tienda, encontrarás productos que brillan con calidad y excelencia. Así como
                                    el sol irradia
                                    luz y calidez, nosotros iluminamos tu experiencia de compra con tejidos de alta calidad
                                    y una atención
                                    dedicada.
                                </p>
                            </div>
                        </div>
                        <div class="col-12 col-lg-5">
                            <div class="circle">
                                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-heart-handshake"
                                     width="28"
                                     height="28" viewBox="0 0 24 24" stroke-width="2" stroke="#ffffff" fill="none"
                                     stroke-linecap="round"
                                     stroke-linejoin="round">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                    <path d="M19.5 12.572l-7.5 7.428l-7.5 -7.428a5 5 0 1 1 7.5 -6.566a5 5 0 1 1 7.5 6.572"/>
                                    <path
                                            d="M12 6l-3.293 3.293a1 1 0 0 0 0 1.414l.543 .543c.69 .69 1.81 .69 2.5 0l1 -1a3.182 3.182 0 0 1 4.5 0l2.25 2.25"/>
                                    <path d="M12.5 15.5l2 2"/>
                                    <path d="M15 13l2 2"/>
                                </svg>
                            </div>
                            <div class="container text-center">
                                <p class="fs-lg-5">
                                    Nos enorgullece ser una tienda accesible para todos. Al igual que el sol brinda su luz a
                                    todos por
                                    igual, nuestra tienda está diseñada para ser inclusiva y fácil de navegar.
                                </p>
                            </div>
                        </div>
                        <div class="container pt-5 mt-5">
                            <div class="row justify-content-evenly">
                                <div class="col-lg-4 col-md-6">
                                    <img class="img-fluid" src="${pageContext.request.contextPath}/assets/img/descarga.jfif" alt="img5">
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <img class="img-fluid" src="${pageContext.request.contextPath}/assets/img/copia.jfif" alt="img6">
                                </div>
                                <div class="col-12 col-lg-4 ps-5 mt-5">
                                    <p class="fs-lg-5">¡Bienvenido a Manos Mexicanas! Aquí encontrarás mucho más que simples
                                        tejidos. Nos
                                        enorgullece
                                        ofrecerte una experiencia completa donde podrás explorar un mundo de posibilidades
                                        creativas.
                                        <br><br>
                                        Nuestra tienda se destaca por brindarte: <br>
                                    <ul style="list-style: number;">
                                        <li>Una selección excepcional: Nos dedicamos a ofrecerte una amplia variedad de
                                            tejidos de alta
                                            calidad,
                                            cuidadosamente elegidos para satisfacer tus necesidades y superar tus
                                            expectativas.
                                        </li>

                                        <li>Inspiración ilimitada: Queremos ser tu fuente de inspiración. Por eso, te
                                            ofrecemos una amplia
                                            gama
                                            de productos y servicios para que puedas dar vida a tus ideas y proyectos.
                                        </li>

                                        <li>Atención personalizada: Valoramos a cada cliente y nos esforzamos por brindarte
                                            un servicio
                                            excepcional.
                                        </li>
                                    </ul>
                                    <button class="btn btn-dark m-4"
                                            style="font-weight: 300; border-radius: 0; padding: 10px; width: 150px;">
                                        <a href="../../views/admin/inicio.jsp">Ver mas</a>
                                    </button>
                                    <button class="btn btn-dark m-4"
                                            style="font-weight: 300; border-radius: 0; padding: 10px; width: 150px;">
                                        <a href="../../views/user/personal_info.jsp">Ver mas</a>
                                    </button>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer class="p-5" style="background-color: #6b6b6b">
        <div class="container text-white border-bottom border-white">
            <nav>
                <h1 style="font-weight: 400">
                    MANOS <br/>
                    MEXICANAS
                </h1>
                <br/><br/>
                <p>
                    <a href="mailto:manos_mexicanas@gmail.com"
                       class="link-light link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">manos_mexicanas@gmail.com</a>
                </p>
                <br/><br/>
                <p>Llama al: 777-549-9809</p>
                <br/>

            </nav>
        </div>
        <p class="text-white text-center p-5" style="font-family: 'Raleway', sans-serif;">
            Copyrights. All rights reserved.
        </p>
    </footer>
    <jsp:include page="/layouts/footer.jsp"/>
</body>
</html>
