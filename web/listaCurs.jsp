<%-- 
    Document   : listaCurs
    Created on : 4 dic. 2022, 15:27:47
    Author     : Junior
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type"
              content="text/html; charset=UTF-8">
        
         <link href="resources/css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="./resources//css/styles.css" />
        
        
        <link
            rel="shortcut icon"
            href="http://www.istpargentina.edu.pe/wp-content/themes/ISTP%20Argenina/img/logo_argentina.png"
            type="image/x-icon"
            />
        <title>Mis Cursos</title>
        
          <Style>
    .baxkk {
  background-image: url(./clina.png);
  height: 100vh;
  background-size: cover;
  background-position: center;}  
    .btn-a {
        text-decoration:none;
        font-weight: 650;
        font-size: 14px;
        color: white;
        background-color:#E59F90;
        border-color: #d8d8d8;
    }.text-center{
    text-align:center
}
    .btn-b {
        text-decoration:none;
        font-weight: 650;
        font-size: 14px;
        color: white;
        
        background-color: #586A89;
        border-color: #d8d8d8;
    }
    .btn-c {
        text-decoration:none;
        font-weight: 650;
        font-size: 14px;
        color: white;
        
        background-color: #86849C;
        border-color: #d8d8d8;
    }
    .btn-d {
        text-decoration:none;
        font-weight: 650;
        font-size: 14px;
        color: white;
        
        background-color: #B499A2;
        border-color: #d8d8d8;
    }
    .btn-e {
        text-decoration:none;
        font-weight: 650;
        font-size: 14px;
        color: white;
        
        background-color: #586A89;
        border-color: #d8d8d8;
    }
    .box{
        font-size: 16px;
        border-width: 0.9px;
        border-style: solid;
        border-radius:5px;
}
.btn-ad {
        text-decoration:none;
        font-weight: 650;
        font-size: 14px;
        color:black;
        padding-top:9px;
        padding-bottom:9px;
        padding-left:17px;
        padding-right:17px;
        background-color:#73DCBF;
        border-color: #d8d8d8;
        border-width: 0.9px;
        border-style: solid;
        border-radius:10px;
    }
    .btn-x {
        text-decoration:none;
        font-weight: 650;
        font-size: 14px;
        color: White;
        padding-top:9px;
        padding-bottom:9px;
        padding-left:17px;
        padding-right:17px;
        background-color:#FFAE6CCC;
        border-color: #d8d8d8;
        border-width: 0.9px;
        border-style: solid;
        border-radius:10px;
    }.btn-primary{
    color:#fff;
    background-color:#337ab7;
    border-color:#2e6da4
}
.btn-primary.focus,.btn-primary:focus{
    color:#fff;
    background-color:#286090;
    border-color:#122b40
}
.btn-primary:hover{
    color:#fff;
    background-color:#286090;
    border-color:#204d74
}
.btn-primary.active,.btn-primary:active,.open>.dropdown-toggle.btn-primary{
    color:#fff;
    background-color:#286090;
    border-color:#204d74
}
.btn-primary.active.focus,.btn-primary.active:focus,.btn-primary.active:hover,.btn-primary:active.focus,.btn-primary:active:focus,.btn-primary:active:hover,.open>.dropdown-toggle.btn-primary.focus,.open>.dropdown-toggle.btn-primary:focus,.open>.dropdown-toggle.btn-primary:hover{
    color:#fff;
    background-color:#204d74;
    border-color:#122b40
}
.btn-primary.active,.btn-primary:active,.open>.dropdown-toggle.btn-primary{
    background-image:none
}
.btn-primary.disabled.focus,.btn-primary.disabled:focus,.btn-primary.disabled:hover,.btn-primary[disabled].focus,.btn-primary[disabled]:focus,.btn-primary[disabled]:hover,fieldset[disabled] .btn-primary.focus,fieldset[disabled] .btn-primary:focus,fieldset[disabled] .btn-primary:hover{
    background-color:#337ab7;
    border-color:#2e6da4
}
.btn-primary .badge{
    color:#337ab7;
    background-color:#fff
}.btn{
    display:inline-block;
    padding:6px 12px;
    margin-bottom:0;
    font-size:14px;
    font-weight:400;
    line-height:1.42857143;
    text-align:center;
    white-space:nowrap;
    vertical-align:middle;
    -ms-touch-action:manipulation;
    touch-action:manipulation;
    cursor:pointer;
    -webkit-user-select:none;
    -moz-user-select:none;
    -ms-user-select:none;
    user-select:none;
    background-image:none;
    border:1px solid transparent;
    border-radius:4px
}table{
    border-spacing:0;
    border-collapse:collapse
}
</Style>
    </head>

    <body background="back.png">
        <%@ page import="Model.Cursos,java.util.ArrayList"%>
        <%@ page import="Controller.borraCurso" %>
        <header class="header" id="header">
      <nav class="nav container">
        <a href="javascript:history.back(-1);" class="nav__logo">
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
            <a href="Login_.jsp" class="button button--ghost">Cerrar Sesión</a>
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
        <br><br><br>
    <Center><br>
        <h2>Cursos Suscritos</h2>
        
        <br><br>
        <%
        ArrayList <Cursos> Curso = null;
        Curso = (ArrayList <Cursos>)request.getAttribute("curso");
        %>
        <div class="new__container container">  
        <table class="table table-bordered"  id="tablaDatos" WIDTH="1000" HEIGHT="155">
            <tr>
                <th class="text-center btn-a">Estudiante</th>
                <th class="text-center btn-a">Id</th>
                <th class="text-center btn-a">Curso</th>
                <th class="text-center btn-a">Precio</th>
                <th class="text-center btn-a">Supscripción</th>
            </tr>
            <%
         String cuenta= (String) request.getAttribute("cuenta");
         String cuentx= null;
                    %>
            <%
            for ( Cursos cursos: Curso)
            {
            %>
            <tr valign="rigth">
                <td class="text-center" style="background-color: #FFE7E280"><%= cursos.getCuenta() %></td>
                <td class="text-center" style="background-color: #FFE7E280"><%=cursos.getIdCurso() %></td>
                <td class="text-center" style="background-color: #FFE7E280"><%=cursos.getNom_curso() %></td>
                <td class="text-center" style="background-color: #FFE7E280">S/. <%=cursos.getPrecio() %></td>
                <td class="text-center" style="background-color: #FFE7E280">
                    <form action="borraCurso" method="post">
                        <input id="IdCurso" type="hidden" name="IdCurso" value="<%=cursos.getIdCurso() %>">
                                    <input id="cuenta" type="hidden" name="cuenta" value="<%= cursos.getCuenta() %>">
                        <input type="submit" value="Cancelar Suscripción" class="btn btn-primary" href="#">
                    </form>
                </td>
            </tr>

            <% cuentx= cursos.getCuenta();
                } %>

        </table><br><br>
            <p class="home__description">
            El pago de el(los) curso(s) suscrito(s) el dia de hoy, le llegara dentro de 24 horas a su correo.
        </p>
</div>
        <br>
        <%
            
            %>
        <a href="login?cuenta=<%= cuentx%>&clave=abcd"class="btn-x">Regresar</a><br><br>
        </Center>
</body>
</html>

