/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Model.*;
import jakarta.servlet.annotation.WebServlet;
/**
 *
 * @author LAB02 - PC05
 */
@WebServlet(name = "borraUsuario",
 urlPatterns = {"/borraUsuario"})
public class borraUsuario extends HttpServlet {
 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
 response.setContentType("text/html;charset=UTF-8");
 PrintWriter out = response.getWriter();
 try {
 String cuenta = request.getParameter("cuenta");
 String clave= request.getParameter("clave");

 GestorBD gestorBD = new GestorBD();

 if (gestorBD.borrar(cuenta, clave)){
 request.getRequestDispatcher("/registroBorrado.jsp")
 .forward(request, response);
 }else
 request.getRequestDispatcher("/noBorroRegistro.jsp")
 .forward(request, response);
 } finally {
 out.close();
 }
 
}
protected void doGet(HttpServletRequest request,
        HttpServletResponse response)
        throws ServletException, IOException {
    processRequest(request, response);
}

// Manipular la petición enviada por el cliente
// utilizando el atributo method=post.
protected void doPost(HttpServletRequest request,
        HttpServletResponse response)
        throws ServletException, IOException {
    processRequest(request, response);
}

// Devuelve una descripción breve.
public String getServletInfo() {
    return "Servlet muestraProductos";
}
}
