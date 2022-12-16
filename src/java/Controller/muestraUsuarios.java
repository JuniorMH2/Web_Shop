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
import java.util.ArrayList;
/**
 *
 * @author LAB02 - PC05
 */
@WebServlet(name = "muestraUsuarios",
 urlPatterns = {"/muestraUsuarios"})
public class muestraUsuarios extends HttpServlet {
 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
 response.setContentType("text/html;charset=UTF-8");
 PrintWriter out = response.getWriter();
 try {
 ArrayList <Usuario> usuarios = new ArrayList<Usuario>();
 Usuario usuario;
 GestorBD gestorBD = new GestorBD();

 usuarios = gestorBD.leeTodos();
 if (usuarios != null){
 request.setAttribute("Usuarios",usuarios);
 request.getRequestDispatcher("/listaCurs.jsp")
 .forward(request, response);
 }else
 request.getRequestDispatcher("/noHayRegistros.jsp")
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
    return "Servlet muestraUsusarios";
}}