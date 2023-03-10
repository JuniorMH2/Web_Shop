<%-- 
    Document   : client
    Created on : 28 nov. 2022, 08:17:25
    Author     : Junior
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Bienvenido</title>
        <link
            href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
            rel="stylesheet"
            />
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"
            />
        <link rel="stylesheet" href="./resources//css/styles.css" />
        <link
            rel="shortcut icon"
            href="http://www.istpargentina.edu.pe/wp-content/themes/ISTP%20Argenina/img/logo_argentina.png"
            type="image/x-icon"
            />

    </head>
    <body>
        <%@ page import="Controller.Compra_Product" %>
        <%@ page import="Model.Cursos,java.util.ArrayList"%>
        <!-- #region ENCABEZADO -->
        <header class="header" id="header">
            <nav class="nav container">
                <a href="index.html" class="nav__logo"><%
         String nombre= (String) request.getAttribute("nombre");
         String cuenta= (String) request.getAttribute("cuenta");
         
                    %>
                    <img
                        src="http://www.istpargentina.edu.pe/wp-content/themes/ISTP%20Argenina/img/logo_argentina.png"
                        alt=""
                        class="nav__logo-img"
                        />
                    I.S.T.P. "Argentina" - <%= nombre %>
                </a>
                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav__item">
                            <a href="#home" class="nav__link active-link">Inicio</a>
                        </li>
                        <form action="muestraCursos" method="post" class="nav__item">
                            <input id="cuenta" type="hidden" name="cuenta" value="<%= cuenta %>">
                            <input type="submit" value="Mis cursos" class=""style="background-color: rgba(0,0,255,0.0);color:  #FFFFFF; font-size:16.5px;" href="#"></form>
                        <li class="nav__item">
                            <a href="#new" class="nav__link">Ofertas</a>
                        </li>
                        <li class="nav__item">
                            <a href="#about" class="nav__link">Nosotros</a>
                        </li>
                        <a href="Login_.jsp" class="button button--ghost">Cerrar Sesion</a>

                    </ul>
                    <div class="nav__close" id="nav-close">
                        <i class="bx bx-x"></i>
                    </div>
                    <img src="resources/img/nav-img.png" alt="" class="nav__img" />
                </div>
                <div class="nav__toggle" id="nav-toggle">
                    <i class="bx bx-grid-alt"></i>
                </div>
            </nav>
        </header>
        <!-- #endregion -->
        <!-- #region Principal-->
        <main class="main">
            <!--Menu inicial-->
            <section class="home container" id="home">
                <div class="swiper home-swiper">
                    <div class="swiper-wrapper">
                        <!--1 2 3-->
                        <section class="swiper-slide">
                            <div class="home__content grid">
                                <div class="home__group">
                                    <img
                                        src="https://cdn-icons-png.flaticon.com/512/5968/5968267.png"
                                        alt=""
                                        class="home__img"
                                        />
                                    <div class="home__indicator"></div>

                                    <div class="home__details-img">
                                        <h4 class="home__details-title">HTML 5</h4>
                                        <span class="home__details-subtitle">
                                            HyperText Markup Language</span
                                        >
                                    </div>
                                </div>

                                <div class="home__data">
                                    <h3 class="home__subtitle">#1 Dise??o y Desarrollo Web</h3>
                                    <h1 class="home__title">
                                        HTML <br />

                                        CSS <br />
                                        MySql
                                    </h1>
                                    <p class="home__description">
                                        Adelante, el curso adem??s de ense??arte de forma pr??ctica y real, pero tambi??n puedes vender los proyectos.

                                        Este curso esta lleno de tips y t??cnicas, adem??s de la creaci??n de Sitios y Aplicaciones Web reales con funciones muy avanzadas y un ??rea de administraci??n para hacer un sitio 100% din??mico.
                                    </p>
                                    <div class="home__buttons">
                                        <form action="Compra_Product" method="post">

                                            <input id="IdCurso" type="hidden" name="IdCurso" value="PrJv1">
                                            <input id="cuenta" type="hidden" name="cuenta" value="<%= cuenta %>">
                                            <input type="submit" value="Obtener Curso" class="button">

                                        </form>


                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="swiper-slide">
                            <div class="home__content grid">
                                <div class="home__group">
                                    <img
                                        src="https://cdn-icons-png.flaticon.com/512/2772/2772128.png"
                                        alt=""
                                        class="home__img"
                                        />
                                    <div class="home__indicator"></div>

                                    <div class="home__details-img">
                                        <h4 class="home__details-title">Microsoft SQL</h4>
                                        <span class="home__details-subtitle">
                                            Structured Query Language</span
                                        >
                                    </div>
                                </div>

                                <div class="home__data">
                                    <h3 class="home__subtitle">#2 SQL y Modelamiento de Base de Datos</h3>
                                    <h1 class="home__title">
                                        Estructura de control<br />
                                        de SQL Server
                                    </h1>
                                    <p class="home__description">
                                        En este curso de SQL y de Modelado de Base de Datos SQL Server conocer??s las reglas que debes considerar durante el proceso de modelado y dise??o de base de datos.
                                    </p>

                                    <div class="home__buttons">
                                        <form action="Compra_Product" method="post">
                                            <input id="IdCurso" type="hidden" name="IdCurso" value="PrSq1">
                                            <input id="cuenta" type="hidden" name="cuenta" value="<%= cuenta %>">
                                            <input type="submit" value="Obtener Curso" class="button">
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="swiper-slide">
                            <div class="home__content grid">
                                <div class="home__group">
                                    <img
                                        src="https://cdn-icons-png.flaticon.com/512/5968/5968389.png"
                                        alt=""
                                        class="home__img"
                                        />
                                    <div class="home__indicator"></div>

                                    <div class="home__details-img">
                                        <h4 class="home__details-title">Microsoft Visual Studio</h4>
                                        <span class="home__details-subtitle"
                                              >Entorno de desarrollo integrado</span
                                        >
                                    </div>
                                </div>

                                <div class="home__data">
                                    <h3 class="home__subtitle">#3 Introduccion a la Programacion</h3>
                                    <h1 class="home__title">
                                        Visual Basic <br />

                                        2019 <br />
                                    </h1>
                                    <p class="home__description">
                                        En este curso te formar??s por completo en el lenguaje Visual Basic .NET para desarrollar aplicaciones, en acceso a bases de datos con la tecnolog??a ADO.NET, en acceso a datos almacenados en diversos gestores de BBDD y en el manejo de formularios Windows.
                                        SEAS ha creado un curso para que te conviertas en un programador profesional del ecosistema .NET.
                                    </p>

                                    <div class="home__buttons">
                                        <form action="Compra_Product" method="post">
                                            <input id="IdCurso" type="hidden" name="IdCurso" value="PrVb1">
                                            <input id="cuenta" type="hidden" name="cuenta" value="<%= cuenta %>">
                                            <input type="submit" value="Obtener Curso" class="button">
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </section>
            <!--Categirias-->

            <section class="section category">
                <h2 class="section__title">
                    Mis <br />
                    Cursos
                </h2>

                <div class="category__container container grid">
                    <div class="category__data">
                        <img
                            src="https://cdn-icons-png.flaticon.com/512/4730/4730440.png"
                            alt=""
                            class="category__img"
                            />
                        <h3 class="category__title">Cargando..</h3>
                        <p class="category__description">
                            Choose the ghosts, the scariest there are.
                        </p>
                    </div>

                </div>
            </section>
            <!--Acerca de-->

            <!--Truco o trato-->
            <section class="section trick" id="trick">
                <h2 class="section__title">Cursos Basicos</h2>

                <div class="trick__container container grid">
                    <div class="trick__content">
                        <img
                            src="https://cdn-icons-png.flaticon.com/512/732/732220.png"
                            alt=""
                            class="trick__img"
                            />
                        <h3 class="trick__title">Excel</h3>
                        <span class="trick__subtitle">Basico</span>
                        <span class="trick__price">S/. 30.00</span>
                        <form action="Compra_Product" method="post">
                            <input id="IdCurso" type="hidden" name="IdCurso" value="MEx01">
                            <input id="cuenta" type="hidden" name="cuenta" value="<%= cuenta %>">
                            <button type="submit" class="button trick__button">
                                <i class="bx bx-cart-alt trick__icon"></i>
                            </button>
                        </form>

                    </div>

                    <div class="trick__content">
                        <img
                            src="https://cdn-icons-png.flaticon.com/512/732/732226.png"
                            alt=""
                            class="trick__img"
                            />
                        <h3 class="trick__title">Word</h3>
                        <span class="trick__subtitle">Intermedio</span>
                        <span class="trick__price">S/. 25.00</span>
                        <form action="Compra_Product" method="post">
                            <input id="IdCurso" type="hidden" name="IdCurso" value="MWd01">
                            <input id="cuenta" type="hidden" name="cuenta" value="<%= cuenta %>">
                            <button type="submit" class="button trick__button">
                                <i class="bx bx-cart-alt trick__icon"></i>
                            </button>
                        </form>

                    </div>

                    <div class="trick__content">
                        <img
                            src="https://cdn-icons-png.flaticon.com/512/888/888874.png"
                            alt=""
                            class="trick__img"
                            />
                        <h3 class="trick__title">PPT</h3>
                        <span class="trick__subtitle">Basico</span>
                        <span class="trick__price">S/. 30.00</span>
                        <form action="Compra_Product" method="post">
                            <input id="IdCurso" type="hidden" name="IdCurso" value="MPw01">
                            <input id="cuenta" type="hidden" name="cuenta" value="<%= cuenta %>">
                            <button type="submit" class="button trick__button">
                                <i class="bx bx-cart-alt trick__icon"></i>
                            </button>
                            ??????????????????</form>
                    </div>

                    <div class="trick__content">
                        <img
                            src="https://cdn-icons-png.flaticon.com/512/732/732220.png"
                            alt=""
                            class="trick__img"
                            />
                        <h3 class="trick__title">Excel</h3>
                        <span class="trick__subtitle">Intermedio</span>
                        <span class="trick__price">S/. 30.00</span>
                        <form action="Compra_Product" method="post">
                            <input id="IdCurso" type="hidden" name="IdCurso" value="MEx02">
                            <input id="cuenta" type="hidden" name="cuenta" value="<%= cuenta %>">
                            <button type="submit" class="button trick__button">
                                <i class="bx bx-cart-alt trick__icon"></i>
                            </button>
                            ??????????????????</form>
                    </div>

                    <div class="trick__content">
                        <img
                            src="https://cdn-icons-png.flaticon.com/512/732/732226.png"
                            alt=""
                            class="trick__img"
                            />
                        <h3 class="trick__title">Word</h3>
                        <span class="trick__subtitle">Avanzado</span>
                        <span class="trick__price">S/. 25.00</span>
                        <form action="Compra_Product" method="post">
                            <input id="IdCurso" type="hidden" name="IdCurso" value="MWd02">
                            <input id="cuenta" type="hidden" name="cuenta" value="<%= cuenta %>">
                            <button type="submit" class="button trick__button">
                                <i class="bx bx-cart-alt trick__icon"></i>
                            </button>
                            ??????????????????</form>
                    </div>

                    <div class="trick__content">
                        <img
                            src="https://cdn-icons-png.flaticon.com/512/888/888874.png"
                            alt=""
                            class="trick__img"
                            />
                        <h3 class="trick__title">PPT</h3>
                        <span class="trick__subtitle">Intermedio</span>
                        <span class="trick__price">S/. 30.00</span>
                        <form action="Compra_Product" method="post">
                            <input id="IdCurso" type="hidden" name="IdCurso" value="MPw02">
                            <input id="cuenta" type="hidden" name="cuenta" value="<%= cuenta %>">
                            <button type="submit" class="button trick__button">
                                <i class="bx bx-cart-alt trick__icon"></i>
                            </button>
                            ??????????????????</form>
                    </div>
                </div>
            </section>
            <!--Descuentos-->
            <section class="section discount">
                <div class="discount__container container grid">
                    <div class="discount__data">
                        <h2 class="discount__title">
                            50% de descuento <br />
                            Sobre nuevos Cursos
                        </h2>
                        <a href="#" class="button">Ir a nuevo</a>
                    </div>

                    <img src="https://cdn-icons-png.flaticon.com/512/3449/3449818.png" alt="" class="discount__img" />
                </div>
            </section>
            <!--Nuevos items-->
            <section class="section new" id="new">
                <h2 class="section__title">Los reci??n llegados</h2>

                <div class="new__container container">
                    <div class="swiper new-swiper">
                        <div class="swiper-wrapper">
                            <div class="new__content swiper-slide">
                                <div class="new__tag">Nuevo</div>
                                <img src="https://cdn.windowsreport.com/wp-content/uploads/2019/08/Fix-power-bi-datasource.errors.jpg" alt="" class="new__img" />
                                <h3 class="new__title">Power BI</h3>
                                <span class="new__subtitle">Datos</span>

                                <div class="new__prices">
                                    <span class="new__price">S/. 44.90</span>
                                    <span class="new__discount">S/. 60.00</span>
                                </div>
                                <form action="Compra_Product" method="post">
                                    <input id="IdCurso" type="hidden" name="IdCurso" value="DtPw1">
                                    <input id="cuenta" type="hidden" name="cuenta" value="<%= cuenta %>">
                                    <button type="submit" class="button new__button">
                                        <i class="bx bx-cart-alt new__icon"></i>
                                    </button>
                                    ??????????????????    </form>
                            </div>

                            <div class="new__content swiper-slide">
                                <div class="new__tag">Nuevo</div>
                                <img src="https://cdn-icons-png.flaticon.com/512/3141/3141285.png" alt="" class="new__img" />
                                <h3 class="new__title">Marketing Digital</h3>
                                <span class="new__subtitle">Publicidad</span>

                                <div class="new__prices">
                                    <span class="new__price">S/. 69.90</span>
                                    <span class="new__discount">S/. 80.00</span>
                                </div>
                                <form action="Compra_Product" method="post">
                                    <input id="IdCurso" type="hidden" name="IdCurso" value="PuMd1">
                                    <input id="cuenta" type="hidden" name="cuenta" value="<%= cuenta %>">
                                    <button type="submit" class="button new__button">
                                        <i class="bx bx-cart-alt new__icon"></i>
                                    </button>
                                    ??????????????????????????</form>
                            </div>

                            <div class="new__content swiper-slide">
                                <div class="new__tag">Nuevo</div>
                                <img src="https://cdn-icons-png.flaticon.com/512/8960/8960011.png" alt="" class="new__img" />
                                <h3 class="new__title">Community Manager</h3>
                                <span class="new__subtitle">Publicidad</span>

                                <div class="new__prices">
                                    <span class="new__price">S/. 75.00</span>
                                    <span class="new__discount">S/. 89.90</span>
                                </div>
                                <form action="Compra_Product" method="post">
                                    <input id="IdCurso" type="hidden" name="IdCurso" value="PuCm1">
                                    <input id="cuenta" type="hidden" name="cuenta" value="<%= cuenta %>">
                                    <button type="submit" class="button new__button">
                                        <i class="bx bx-cart-alt new__icon"></i>
                                    </button>
                                    ??????????????????????????</form>
                            </div>

                            <div class="new__content swiper-slide">
                                <div class="new__tag">Nuevo</div><br>
                                <img src="https://miro.medium.com/max/574/1*KGGeFrF16_Kesyp4JBqYqg.png" alt="" class="new__img" /><br><br>
                                <h3 class="new__title">Google Ads, Analytics</h3>
                                <span class="new__subtitle">Publicidad</span>

                                <div class="new__prices">
                                    <span class="new__price">S/. 64.90</span>
                                    <span class="new__discount">S/. 75.00</span>
                                </div>
                                <form action="Compra_Product" method="post">
                                    <input id="IdCurso" type="hidden" name="IdCurso" value="PuGo1">
                                    <input id="cuenta" type="hidden" name="cuenta" value="<%= cuenta %>">
                                    <button type="submit" class="button new__button">
                                        <i class="bx bx-cart-alt new__icon"></i>
                                    </button>
                                    ??????????????????????????</form>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
            <section class="section about" id="about">
                <div class="about__container container grid">
                    <div class="about__data">
                        <h2 class="section__title about__title">
                            Acerca de I.S.T.P.
                            <br />

                            Argentina
                        </h2>
                        <p class="about__description">
                            Somos un Instituto de Educaci??n Superior P??blico,
                            con prestigio vigente durante nuestros 75 a??os de
                            impartir ense??anza de calidad y mantener un compromiso
                            con el Pa??s. Nuestra mejor carta de presentaci??n
                            son nuestros egresados. Contamos con un excelente
                            equipo docente, herramientas y equipos acordes con
                            los avances de la tecnolog??a y renovada infraestructura.
                        </p>
                        <a href="http://www.istpargentina.edu.pe/docentes-nosotros/" target="_blank" class="button"> Saber m??s</a>
                    </div>

                    <img src="http://www.istpargentina.edu.pe/wp-content/themes/ISTP%20Argenina/img/logo_argentina.png" alt="" class="about__img" />
                </div>
            </section>
            <!--Suscribirse
            <section class="section newsletter">
              <div class="newsletter__container container">
                <h2 class="section__title">Our Newsletter</h2>
                <p class="newsletter__description">
                  Promotion new products and sales. Directly to your inbox
                </p>
      
                <form action="" class="newsletter__form">
                  <input
                    type="text"
                    placeholder="Enter your email"
                    class="newsletter__input"
                  />
                  <button class="button">Subscribe</button>
                </form>
              </div>
            </section>
            -->
        </main>
        <!--Pie de pagina-->
        <footer class="footer section">
            <div class="footer__container container grid">
                <div class="footer__content">
                    <a href="#" class="footer__logo">
                        <img src="http://www.istpargentina.edu.pe/wp-content/themes/ISTP%20Argenina/img/logo_argentina.png" alt="" class="footer__logo-img" />
                        I.S.T.P. "Argentina"
                    </a>

                    <p class="footer__description">
                        Av. Alfonso Ugarte Cdra. 9 <br />
                        Horario de Atenci??n - Oficinas: <br />
                        Lunes a Viernes 9:00 a.m. a 9:00 p.m.
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15607.505097790743!2d-77.0419088!3d-12.0520329!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa442b001cf5154c6!2sInstituto%20de%20Educaci%C3%B3n%20Superior%20Tecnol%C3%B3gico%20P%C3%BAblico%20Argentina!5e0!3m2!1ses!2spe!4v1669942992351!5m2!1ses!2spe" width="300" height="200" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </p>

                    <div class="footer__social">
                        <a
                            href="https://www.facebook.com/instituto.argentina/"
                            target="_blank"
                            class="footer__social-link"
                            >
                            <i class="bx bxl-facebook"></i>
                        </a>
                        <a
                            href="https://www.instagram.com/confesionesistpargentina/"
                            target="_blank"
                            class="footer__social-link"
                            >
                            <i class="bx bxl-instagram-alt"></i>
                        </a>
                        <a
                            href="https://twitter.com/drelm_lima/status/1258065420298391552"
                            target="_blank"
                            class="footer__social-link"
                            >
                            <i class="bx bxl-twitter"></i>
                        </a>
                    </div>
                </div>

                <div class="footer__content">
                    <h3 class="footer__title">Nosotros</h3>

                    <ul class="footer__links">
                        <li>
                            <a href="#" target="_blank" class="footer__link">??Quienes somos?</a>
                        </li>
                        <li>
                            <a href="http://www.istpargentina.edu.pe/docentes-nosotros/#1517198760819-9d598d54-b240" target="_blank" class="footer__link">Mision y Vision</a>
                        </li>
                        <li>
                            <a href="http://www.istpargentina.edu.pe/noticias/" target="_blank" class="footer__link">Noticias</a>
                        </li>
                    </ul>
                </div>

                <div class="footer__content">
                    <h3 class="footer__title">Servicios</h3>

                    <ul class="footer__links">
                        <li>
                            <a href="#trick" class="footer__link">Cursos</a>
                        </li>
                        <li>
                            <a href="#new" class="footer__link">Ofertas</a>
                        </li>
                        <li>
                            <a href="#" class="footer__link">Metodos de Pago</a>
                        </li>
                    </ul>
                </div>

                <div class="footer__content">
                    <h3 class="footer__title">Pagina Central</h3>

                    <ul class="footer__links">
                        <li>
                            <a href="#" class="footer__link">Blog</a>
                        </li>
                        <li>
                            <a href="#" class="footer__link">??Quienes somos?</a>
                        </li>
                        <li>
                            <a href="#" class="footer__link">Nuestra Mision</a>
                        </li>

                    </ul>
                </div>
            </div>

            <span class="footer__copy">&#169; I.S.T.P. "Argentina"<br><br>
                <img class=" lazyloaded" src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/american_express-2264c9b8b57b23b0b0831827e90cd7bcda2836adc42a912ebedf545dead35b20.svg" data-src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/american_express-2264c9b8b57b23b0b0831827e90cd7bcda2836adc42a912ebedf545dead35b20.svg" alt="american express"><img class=" lazyloaded" src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/apple_pay-f6db0077dc7c325b436ecbdcf254239100b35b70b1663bc7523d7c424901fa09.svg" data-src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/apple_pay-f6db0077dc7c325b436ecbdcf254239100b35b70b1663bc7523d7c424901fa09.svg" alt="apple pay"><img class=" lazyloaded" src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/google_pay-c66a29c63facf2053bf69352982c958e9675cabea4f2f7ccec08d169d1856b31.svg" data-src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/google_pay-c66a29c63facf2053bf69352982c958e9675cabea4f2f7ccec08d169d1856b31.svg" alt="google pay"><img class=" lazyloaded" src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/master-173035bc8124581983d4efa50cf8626e8553c2b311353fbf67485f9c1a2b88d1.svg" data-src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/master-173035bc8124581983d4efa50cf8626e8553c2b311353fbf67485f9c1a2b88d1.svg" alt="maestro"><img class=" lazyloaded" src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/paypal-49e4c1e03244b6d2de0d270ca0d22dd15da6e92cc7266e93eb43762df5aa355d.svg" data-src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/paypal-49e4c1e03244b6d2de0d270ca0d22dd15da6e92cc7266e93eb43762df5aa355d.svg" alt="paypal"><img class=" lazyloaded" src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/shopify_pay-100fde795157a3d1c18042346cf8dbd1fcf4c4f53c20064e13ea2799eb726655.svg" data-src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/shopify_pay-100fde795157a3d1c18042346cf8dbd1fcf4c4f53c20064e13ea2799eb726655.svg" alt="shopify pay"><img class=" lazyloaded" src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/visa-319d545c6fd255c9aad5eeaad21fd6f7f7b4fdbdb1a35ce83b89cca12a187f00.svg" data-src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/visa-319d545c6fd255c9aad5eeaad21fd6f7f7b4fdbdb1a35ce83b89cca12a187f00.svg" alt="visado">

            </span>

            <img src="https://cdn-icons-png.flaticon.com/512/5606/5606108.png" alt="" class="footer__img-one" />
            <img src="https://cdn-icons-png.flaticon.com/512/3065/3065699.png" alt="" class="footer__img-two" />
        </footer>
        <!-- #endregion -->
        <a href="#" class="scrollup" id="scroll-up">
            <i class="bx bx-up-arrow-alt scrollup__icon"></i>
        </a>

        <!--Scroll para que se revelen los elementos de forma suave-->
        <script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>

        <!--Deslizar elementos en una lista-->
        <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

        <script src="./resources/js/main.js"></script>
    </body>
</html>
