<%-- 
    Document   : Editar
    Created on : 02/02/2018, 03:33:51 PM
    Author     : Joel
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body background="back.png">
        <%
       //CONECTANOD A LA BASE DE DATOS:
       Connection con;
       String url="jdbc:mysql://localhost:3306/bd_cursos_web";
       String Driver="com.mysql.jdbc.Driver";
       String user="root";
       String clave="mysql2";
       Class.forName(Driver);
       con=DriverManager.getConnection(url,user,clave);
       //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
       PreparedStatement ps;
       ResultSet rs;
       String cuenta=request.getParameter("cuenta");
       String IdCurso=request.getParameter("IdCurso");
       ps=con.prepareStatement("select * from bd_cursos_web where IdCurso = '"+IdCurso+"'");
       rs=ps.executeQuery();
       while(rs.next()){
                         %>
        <div class="container">
            <h1>Modificar Registro</h1>
            <hr>
            <form action="" method="post" class="form-control" style="background-color: #FFE7E280;width: 500px; height: 450px">
                Cuenta:
                <input type="text" name="cuenta" readonly="" class="form-control" value="<%= rs.getString("cuenta")%>"/><br>
                Curso:
                <input type="text" name="IdCurso" class="form-control" value="<%= rs.getString("IdCurso")%>"/><br>
                Nombre
                <input type="text" name="txtNom" class="form-control" value="<%= rs.getString("Nom_curso")%>"/><br>
                Precio:
                <input type="text" name="txtApell" class="form-control" value="<%= rs.getString("Precio")%>"/><br>
                 <Center>
                <input type="submit" value="Comprar" class="btn btn-primary btn-lg"/>   
                <a href="listaUsuarios_1.jsp">Regresar</a></Center>
            </form>
            <%}%>
        </div>
    </body>
</html>
<%
    String IdCurso, cuenta;
       IdCurso=request.getParameter("IdCurso");
       cuenta=request.getParameter("cuenta");
       if(cuenta!=null && IdCurso!=null){
           ps=con.prepareStatement("INSERT INTO Registro_cursos VALUES('" + cuenta + "','" + IdCurso  +"'");
           ps.executeUpdate();
           response.sendRedirect("client.jsp");
       }
       
       
%>
