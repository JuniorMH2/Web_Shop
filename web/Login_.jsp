<%-- 
    Document   : Login_
    Created on : 24 nov. 2022, 23:08:21
    Author     : Junior
<%
        document.querySelector('.img__btn').addEventListener('click', function() {
  document.querySelector('.cont').classList.toggle('s--signup');
});
        %>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ingreso</title>
         <%-- <link rel="stylesheet" href="./style.scss" />
         --%>
         <link rel="stylesheet" href="./resources//css/styles.css" />
         <link href="resources/css/sweetalert.css" rel="stylesheet" type="text/css"/>
         <link
    rel="shortcut icon"
    href="http://www.istpargentina.edu.pe/wp-content/themes/ISTP%20Argenina/img/logo_argentina.png"
    type="image/x-icon"
  />
         <Style>
      @import url(//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);   *, *:before, *:after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
  background: linear-gradient(90deg, hsl(215, 51%, 75%) 0%, hsl(220, 90%, 54%) 100%);
}

input, button {
  border: none;
  outline: none;
  background: none;
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
}

.tip {
  font-size: 20px;
  margin: 40px auto 50px;
  text-align: center;
}

.cont {
  overflow: hidden;
  position: relative;
  width: 900px;
  height: 550px;
  margin: 0 auto 100px;
  background: #fff;
}

.form {
  position: relative;
  width: 640px;
  height: 100%;
  transition: transform 1.2s ease-in-out;
  padding: 50px 30px 0;
}

.sub-cont {
  overflow: hidden;
  position: absolute;
  left: 640px;
  top: 0;
  width: 900px;
  height: 100%;
  padding-left: 260px;
  background: #fff;
  transition: transform 1.2s ease-in-out;
}
.cont.s--signup .sub-cont {
  transform: translate3d(-640px, 0, 0);
}

button {
  display: block;
  margin: 0 auto;
  width: 260px;
  height: 36px;
  border-radius: 30px;
  color: #fff;
  font-size: 15px;
  cursor: pointer;
}

.img {
  overflow: hidden;
  z-index: 2;
  position: absolute;
  left: 0;
  top: 0;
  width: 260px;
  height: 100%;
  padding-top: 360px;
}
.img:before {
  content: "";
  position: absolute;
  right: 0;
  top: 0;
  width: 900px;
  height: 100%;
  background-image: url("https://usil.edu.pe/sites/default/files/2022-02/170222-ingenieria-software-puestos-trabajo.jpg");
  background-size: cover;
  transition: transform 1.2s ease-in-out;
}
.img:after {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.6);
}
.cont.s--signup .img:before {
  transform: translate3d(640px, 0, 0);
}
.img__text {
  z-index: 2;
  position: absolute;
  left: 0;
  top: 50px;
  width: 100%;
  padding: 0 20px;
  text-align: center;
  color: #fff;
  transition: transform 1.2s ease-in-out;
}
.img__text h2 {
  margin-bottom: 10px;
  font-weight: normal;
}
.img__text p {
  font-size: 14px;
  line-height: 1.5;
}
.cont.s--signup .img__text.m--up {
  transform: translateX(520px);
}
.img__text.m--in {
  transform: translateX(-520px);
}
.cont.s--signup .img__text.m--in {
  transform: translateX(0);
}
.img__btn {
  overflow: hidden;
  z-index: 2;
  position: relative;
  width: 100px;
  height: 36px;
  margin: 0 auto;
  background: transparent;
  color: #fff;
  text-transform: uppercase;
  font-size: 15px;
  cursor: pointer;
}
.img__btn:after {
  content: "";
  z-index: 2;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  border: 2px solid #fff;
  border-radius: 30px;
}
.img__btn span {
  position: absolute;
  left: 0;
  top: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
  transition: transform 1.2s;
}
.img__btn span.m--in {
  transform: translateY(-72px);
}
.cont.s--signup .img__btn span.m--in {
  transform: translateY(0);
}
.cont.s--signup .img__btn span.m--up {
  transform: translateY(72px);
}

h2 {
  width: 100%;
  font-size: 26px;
  text-align: center;
}

label {
  display: block;
  width: 260px;
  margin: 25px auto 0;
  text-align: center;
}
label span {
  font-size: 12px;
  color: #1a1a1c;
  text-transform: uppercase;
}

input {
  display: block;
  width: 100%;
  margin-top: 5px;
  padding-bottom: 5px;
  font-size: 16px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.4);
  text-align: center;
}

.forgot-pass {
  margin-top: 15px;
  text-align: center;
  font-size: 12px;
  color: #cfcfcf;
}

.submit {
  margin-top: 40px;
  margin-bottom: 20px;
  background: #0b59f4;
  text-transform: uppercase;
}

.fb-btn {
  border: 2px solid #d3dae9;
  color: #8fa1c7;
}
.fb-btn span {
  font-weight: bold;
  color: #455a81;
}

.sign-in {
  transition-timing-function: ease-out;
}
.cont.s--signup .sign-in {
  transition-timing-function: ease-in-out;
  transition-duration: 1.2s;
  transform: translate3d(640px, 0, 0);
}

.sign-up {
  transform: translate3d(-900px, 0, 0);
}
.cont.s--signup .sign-up {
  transform: translate3d(0, 0, 0);
}

.icon-link {
  position: absolute;
  left: 5px;
  bottom: 5px;
  width: 32px;
}
.icon-link img {
  width: 100%;
  vertical-align: top;
}
.icon-link--twitter {
  left: auto;
  right: 5px;
}
</Style>
    </head>
    <body>
        <header class="header" id="header">
      <nav class="nav container">
        <a href="index.html" class="nav__logo">
          <img
            src="http://www.istpargentina.edu.pe/wp-content/themes/ISTP%20Argenina/img/logo_argentina.png"
            alt=""
            class="nav__logo-img"
          />
          I.S.T.P. "Argentina"
        </a>
        <div class="nav__menu" id="nav-menu">
          <ul class="nav__list">
            <li class="nav__item">
              <a href="index.html#home" class="nav__link active-link">Inicio</a>
            </li>
            <li class="nav__item">
              <a href="index.html#about" class="nav__link">Nosotros</a>
            </li>
            <li class="nav__item">
              <a href="index.html#trick" class="nav__link">Cursos</a>
            </li>
            <li class="nav__item">
              <a href="index.html#new" class="nav__link">Ofertas</a>
            </li>
            <a href="Login_.jsp" class="button button--ghost">Ingresar</a>
          </ul>
          <div class="nav__close" id="nav-close">
            <i class="bx bx-x"></i>
          </div>
          <img src="assets/img/nav-img.png" alt="" class="nav__img" />
        </div>
        <div class="nav__toggle" id="nav-toggle">
          <i class="bx bx-grid-alt"></i>
        </div>
      </nav>
    </header>
        <br><br><br><br>
<div class="cont">
  <div class="form sign-in">
    <h2 Style="color: black;">Bienvenido de nuevo,</h2>
     <%@ page import="Controller.login" %>
     <form action="login" class="login-form">
         <label>
      <span>Correo</span>
      <input   class="login-username"type="text" name="cuenta" autofocus="true" required="true" placeholder="Email">
    </label>
    <label>
      <span>Contraseña</span>
      <input type="password" name="clave" required="true" placeholder="Password">
    </label><br>
         <Center>
    <a href="https://twitter.com/drelm_lima/status/1258065420298391552" class="forgot-pass">¿Olvidaste tu Contraseña?</a></Center>
    <button id="button1" type="submit" class="submit">Ingresar</button>
    
     </form>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.4.38/sweetalert2.all.min.js"></script>

     <script src="resources/js/sweetalert.js" type="text/javascript"></script>
     <script>
    $(document).ready(function(){
    $("#button2").submit(function(e){
e.preventDefault();
        Swal.fire({
  title: 'Custom animation with Animate.css',
  showClass: {
    popup: 'animate__animated animate__fadeInDown'
  },
  hideClass: {
    popup: 'animate__animated animate__fadeOutUp'
  }
});
});
});
      </script>
      
    <button type="button" class="fb-btn">Conectate con <span>facebook</span></button>
  </div>
  <div class="sub-cont">
    <div class="img">
      <div class="img__text m--up">
        <h2>¿Eres nuevo aquí?</h2>
        <p>¡Regístrese y descubra nuestros cursos especializados!</p>
      </div>
      <div class="img__text m--in">
        <h2>¿Uno de nosotros?</h2>
        <p>Si ya tienes una cuenta, sólo tienes que iniciar sesión. ¡Te hemos echado de menos!</p>
      </div>
      <div class="img__btn">
        <span class="m--up">Registrarse</span>
        <span class="m--in">Ingresar</span> 
      </div>
    </div>
    <div class="form sign-up">
         <%@ page import="Controller.registro" %>
 <form action="registro" method="post">
      <h2 Style="color: black;">La inciativa es tuya,</h2>
      <label>
        <span>Usuario</span>
        <input type="text" name="cuenta"/>
      </label>
      <label>
        <span>Nombre</span>
        <input type="text" name="nombre"/>
      </label>
      <label>
        <span>Correo</span>
        <input type="email" name="mail"/>
      </label>
      <label>
        <span>Contraseña</span>
        <input type="password" name="clave"/>
      </label>
      <button type="submit" class="submit">Registrarse</button>
      <button type="button" class="fb-btn">Registrarse con <span>facebook</span></button>
       </form>
    </div>
  </div>
</div>       
    <script src="./script.js"></script>
    <script src="resources/js/mensaje_btn.js" type="text/javascript"></script>
    </body>
    
</html>

