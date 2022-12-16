<%-- 
    Document   : registroGuardado
    Created on : 19 oct. 2022, 10:11:55
    Author     : Junior
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Guardado</title>
        <link
            rel="shortcut icon"
            href="http://www.istpargentina.edu.pe/wp-content/themes/ISTP%20Argenina/img/logo_argentina.png"
            type="image/x-icon"
            />
    
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
    <body>
        <%@ page import="Model.Usuario" %>
 <%
 String cuenta = request.getParameter("cuenta");
 String nombre= request.getParameter("nombre");
 String clave= request.getParameter("clave");
 String mail = request.getParameter("mail");
 %>

 <h3> Registro exitoso en la base de datos</h3>

 <p> Se guardaron los siguientes datos: </p>

 <table class="table table-bordered"  cellspacing="3" cellpadding="3" border="1" >
 <tr>
 <td align="right"> Cuenta: </td>
 <td> <%= cuenta %> </td>
 </tr>
 <tr>
 <td align="right"> Nombre: </td>
 <td> <%= nombre %> </td>
 </tr>
 <tr>
 <td align="right"> Contraseña: </td>
 <td> <%= clave %> </td>
 </tr>
 <tr>
 <td align="right"> Mail: </td>
 <td> <%= mail %> </td>
 </tr>
 </table>

 <form action="index.jsp" method="post">
 <input type="submit" value="Regresar">
 </form>
    </body>
</html>
