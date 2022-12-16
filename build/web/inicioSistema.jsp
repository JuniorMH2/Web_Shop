<%-- 
    Document   : inicioSistema
    Created on : 19 oct. 2022, 10:10:30
    Author     : Junior
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio Sistema</title>
        <Style>
    .form {
  background-color: white;
  width: 400px;
  border-radius: 8px;
  padding: 20px 40px;
  box-shadow: 0 10px 25px rgba(92, 99, 105, .2);
  position: absolute;
  top: 28%;
  left: 58%;
}.baxkk {
  background-image: url(./clina.png);
  height: 100vh;
  background-size: cover;
  background-position: center;}  
    .btn-a {
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
    }
    .btn-b {
        text-decoration:none;
        font-weight: 650;
        font-size: 14px;
        color:black;
        padding-top:9px;
        padding-bottom:9px;
        padding-left:17px;
        padding-right:17px;
        background-color:#F58C4C;
        border-color: #d8d8d8;
        border-width: 0.9px;
        border-style: solid;
        border-radius:10px;
    }
    .btn-c {
        text-decoration:none;
        font-weight: 650;
        font-size: 14px;
        color:black;
        padding-top:9px;
        padding-bottom:9px;
        padding-left:17px;
        padding-right:17px;
        background-color:#60A2F0;
        border-color: #d8d8d8;
        border-width: 0.9px;
        border-style: solid;
        border-radius:10px;
    }
    .btn-d {
        text-decoration:none;
        font-weight: 650;
        font-size: 14px;
        color:black;
        padding-top:9px;
        padding-bottom:9px;
        padding-left:17px;
        padding-right:17px;
        background-color:#FFFFFF ;
        border-color: #d8d8d8;
        border-width: 0.9px;
        border-style: solid;
        border-radius:10px;
    }
    .btn-e {
        text-decoration:none;
        font-weight: 650;
        font-size: 14px;
        color:white;
        padding-top:9px;
        padding-bottom:9px;
        padding-left:17px;
        padding-right:17px;
        background-color:black ;
        border-color: #d8d8d8;
        border-width: 0.9px;
        border-style: solid;
        border-radius:10px;
    }
    .box{
        font-size: 16px;
        border-width: 0.9px;
        border-style: solid;
        border-radius:5px;
}
</Style>
    </head>
    <body background="back.png">
         <Center> <br> <br>
        <%@ page import="Controller.registro" %>
 <%
 String nombre= (String) request.getAttribute("nombre");
 %>
<h1> Bienvenido al Sistema de Atencion Veterinaria</h1><br>
 <h1>Sr. <%= nombre %></h1>
 <br>
  <form action="http://localhost:8080/Practica_02/Menu.jsp" method="post">
 <input type="submit" value="Menu" class="btn-a" href="#">
 </form>
 <br>
 <form action="muestraUsuarios" method="post">
 <input type="submit" value="Consultar Usuarios" class="btn-a" href="#">
 </form>
 <br>
 <form action="capturaBorrado.jsp" method="post">
 <input type="submit" value="Borrar un usuario" class="btn-a" href="#">
 </form>
 <br>
 <form action="index.jsp" method="post">
 <input type="submit" value="Salir" class="btn-a" href="#">
 </form>
 </Center>
    </body>
</html>
