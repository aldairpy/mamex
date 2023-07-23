<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="../../layouts/head.jsp"/>
    <title>Contacto</title>
</head>

<body>
<jsp:include page="../../layouts/nav.jsp"/>

<div class="container">
    <div class="row">
        <div class="col-12">
            <h1 class="text-center m-3">Contáctanos</h1>
            <p class="text-center m-5">
                En <i>Manos Mexicanas</i> nos importa tu experiencia de compra y queremos asegurarnos de que estés
                completamente satisfecho. <br>
                ¿Tienes algún inconveniente con tu pedido? ¿Una duda que necesitas resolver o una sugerencia para
                mejorar
                nuestra tienda? ¡No te preocupes, estamos aquí para ayudarte!
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <article class="contact-cards">
                <aside class="contact-card box-shadow-1">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-map-pin" width="44"
                         height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#f8c291" fill="none"
                         stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <path d="M9 11a3 3 0 1 0 6 0a3 3 0 0 0 -6 0" />
                        <path
                                d="M17.657 16.657l-4.243 4.243a2 2 0 0 1 -2.827 0l-4.244 -4.243a8 8 0 1 1 11.314 0z" />
                    </svg>
                    <h5>UBICACIÓN</h5>
                    <small>Ciudad de México, CDMX</small>

                </aside>

                <aside class="contact-card box-shadow-1" id="link">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-mail" width="44"
                         height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#f8c291" fill="none"
                         stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <path d="M3 7a2 2 0 0 1 2 -2h14a2 2 0 0 1 2 2v10a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-10z" />
                        <path d="M3 7l9 6l9 -6" />
                    </svg>
                    <h5>EMAIL</h5>
                    <small><a href="mailto:manos_mexicanas@gmail.com">manos_mexicanas@gmail.com</a></small>
                </aside>

                <aside class="contact-card box-shadow-1" id="link">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-phone" width="44"
                         height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#f8c291" fill="none"
                         stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                        <path
                                d="M5 4h4l2 5l-2.5 1.5a11 11 0 0 0 5 5l1.5 -2.5l5 2v4a2 2 0 0 1 -2 2a16 16 0 0 1 -15 -15a2 2 0 0 1 2 -2" />
                    </svg>
                    <h5>TELÉFONO</h5>
                    <small><a href="tel:777-549-9809">777-549-9809</a></small>
                </aside>

                <aside class="contact-card box-shadow-1">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-hash" width="44"
                         height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#f8c291" fill="none"
                         stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <path d="M5 9l14 0" />
                        <path d="M5 15l14 0" />
                        <path d="M11 4l-4 16" />
                        <path d="M17 4l-4 16" />
                    </svg>
                    <h5>RRSS</h5>
                    <small class="social-media">
                        <a href="https://twitter.com/billieeilish" target="_blank" rel="noopener">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                <path
                                        d="M19.633,7.997c0.013,0.175,0.013,0.349,0.013,0.523c0,5.325-4.053,11.461-11.46,11.461c-2.282,0-4.402-0.661-6.186-1.809	c0.324,0.037,0.636,0.05,0.973,0.05c1.883,0,3.616-0.636,5.001-1.721c-1.771-0.037-3.255-1.197-3.767-2.793	c0.249,0.037,0.499,0.062,0.761,0.062c0.361,0,0.724-0.05,1.061-0.137c-1.847-0.374-3.23-1.995-3.23-3.953v-0.05	c0.537,0.299,1.16,0.486,1.82,0.511C3.534,9.419,2.823,8.184,2.823,6.787c0-0.748,0.199-1.434,0.548-2.032	c1.983,2.443,4.964,4.04,8.306,4.215c-0.062-0.3-0.1-0.611-0.1-0.923c0-2.22,1.796-4.028,4.028-4.028	c1.16,0,2.207,0.486,2.943,1.272c0.91-0.175,1.782-0.512,2.556-0.973c-0.299,0.935-0.936,1.721-1.771,2.22	c0.811-0.088,1.597-0.312,2.319-0.624C21.104,6.712,20.419,7.423,19.633,7.997z" />
                            </svg>
                        </a>
                        <a href="https://es-la.facebook.com/billieeilish/" target="_blank" rel="noopener">
                            <svg fill="#000000" width="27" height="27" viewBox="-2.4 -2.4 28.80 28.80"
                                 xmlns="http://www.w3.org/2000/svg" stroke="#000000"
                                 stroke-width="0.00024000000000000003">
                                <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                                <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"
                                   stroke="#CCCCCC" stroke-width="0.43200000000000005"></g>
                                <g id="SVGRepo_iconCarrier">
                                    <path
                                            d="M12 2.03998C6.5 2.03998 2 6.52998 2 12.06C2 17.06 5.66 21.21 10.44 21.96V14.96H7.9V12.06H10.44V9.84998C10.44 7.33998 11.93 5.95998 14.22 5.95998C15.31 5.95998 16.45 6.14998 16.45 6.14998V8.61998H15.19C13.95 8.61998 13.56 9.38998 13.56 10.18V12.06H16.34L15.89 14.96H13.56V21.96C15.9164 21.5878 18.0622 20.3855 19.6099 18.57C21.1576 16.7546 22.0054 14.4456 22 12.06C22 6.52998 17.5 2.03998 12 2.03998Z">
                                    </path>
                                </g>
                            </svg>
                        </a>
                        <a href="https://www.instagram.com/billieeilish/" target="_blank" rel="noopener">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-instagram"
                                 width="24" height="24" viewBox="0 0 24 24" stroke-width="1.5" stroke="#000000"
                                 fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <rect x="4" y="4" width="16" height="16" rx="4" />
                                <circle cx="12" cy="12" r="3" />
                                <line x1="16.5" y1="7.5" x2="16.5" y2="7.501" />
                            </svg>
                        </a>
                    </small>
                </aside>
            </article>
        </div>
    </div>
</div>


<jsp:include page="../../layouts/footer.jsp"/>
</body>

</html>