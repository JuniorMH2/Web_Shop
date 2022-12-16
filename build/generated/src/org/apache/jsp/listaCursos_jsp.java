package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Model.Cursos;
import java.util.ArrayList;

public final class listaCursos_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write(" <head>\n");
      out.write(" <meta http-equiv=\"Content-Type\"\n");
      out.write(" content=\"text/html; charset=UTF-8\">\n");
      out.write(" <title>Listado de Usuarios</title>\n");
      out.write(" <Style>\n");
      out.write("     .btn-x {\n");
      out.write("        text-decoration:none;\n");
      out.write("        font-weight: 650;\n");
      out.write("        font-size: 14px;\n");
      out.write("        color: White;\n");
      out.write("        padding-top:9px;\n");
      out.write("        padding-bottom:9px;\n");
      out.write("        padding-left:17px;\n");
      out.write("        padding-right:17px;\n");
      out.write("        background-color:#FFAE6CCC;\n");
      out.write("        border-color: #d8d8d8;\n");
      out.write("        border-width: 0.9px;\n");
      out.write("        border-style: solid;\n");
      out.write("        border-radius:10px;\n");
      out.write("    }\n");
      out.write("     </Style>\n");
      out.write(" </head>\n");
      out.write(" <body background=\"back.png\">\n");
      out.write(" \n");
      out.write(" <Center><br>\n");
      out.write(" <h2>Los usuarios que están registrados son: </h2><br><br>\n");
      out.write(" ");

 ArrayList<Cursos> Curso = null;
 Curso =
 (ArrayList<Cursos>)request.getAttribute("curso");
 
      out.write(" \n");
      out.write("<table border=\"1\">\n");
      out.write(" <tr>\n");
      out.write(" <th>Id</th>\n");
      out.write(" <th>Curso</th>\n");
      out.write(" <th>Precio</th>\n");
      out.write(" </tr>\n");
      out.write(" ");

 for (Cursos Cursos: Curso)
 {
 
      out.write("\n");
      out.write(" <tr valign=\"rigth\">\n");
      out.write(" <td>");
      out.print(Cursos.getIdCurso() );
      out.write("</td>\n");
      out.write(" <td>");
      out.print(Cursos.getNom_curso() );
      out.write("</td>\n");
      out.write(" <td>");
      out.print(Cursos.getPrecio() );
      out.write("</td>\n");
      out.write("\n");
      out.write(" </tr>\n");
      out.write("\n");
      out.write(" ");
 } 
      out.write("\n");
      out.write("\n");
      out.write(" </table>\n");
      out.write("\n");
      out.write(" <br>\n");
      out.write(" <form action=\"inicioSistema.jsp\" method=\"post\" >\n");
      out.write(" <input type=\"submit\" value=\"Regresar\" class=\"btn-x\">\n");
      out.write(" </form><br>\n");
      out.write("  <form action=\"listaUsuarios_1.jsp\" method=\"post\">\n");
      out.write(" <input type=\"submit\" value=\"Usuarios\" class=\"btn-x\">\n");
      out.write(" </form>\n");
      out.write("  </Center>\n");
      out.write(" </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
