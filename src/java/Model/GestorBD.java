/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
/**
 *
 * @author Junior
 */
public class GestorBD {
    
    Connection conn = null;
 Statement stm=null;
 ResultSet usuarioResultSet;
 Usuario usuarioHallado;
 Cursos CursoHallado;
 Double Precio;
 String cuent, nom, passw, mail,IdCurso;
public boolean registrar(String cuenta, String nombre,
 String clave, String mail) {
 int resultUpdate = 0;
 try{
 conn = ConectaBD.abrir();
 stm = conn.createStatement();

 resultUpdate=stm.executeUpdate("INSERT INTO usuarios VALUES('" + cuenta + "','" + nombre + "','" + clave +"','"+mail+ "',NULL);");
 if(resultUpdate != 0){
 ConectaBD.cerrar();
 return true;
 }else{
 ConectaBD.cerrar();
 return false;
 }

 } catch (Exception e) {
 System.out.println("Error en la base de datos.");
 e.printStackTrace();
 return false;
 } 
} 
    

    public Usuario consultar(String cuenta, String clave){
 try{
 conn = ConectaBD.abrir();
 stm = conn.createStatement();
 usuarioResultSet = stm.executeQuery("SELECT * FROM usuarios WHERE cuenta='"+cuenta+ "' and clave='"+clave+"';");
 if(!usuarioResultSet.next()){
 System.out.println(" No se encontro el registro");
 ConectaBD.cerrar();
 return null;
 }else{
 System.out.println("Se encontró el registro");
 cuent = usuarioResultSet.getString("cuenta");
 nom = usuarioResultSet.getString("nombre");
 passw = usuarioResultSet.getString("clave");
 mail = usuarioResultSet.getString("mail");
 usuarioHallado = new Usuario(cuent,nom,passw,mail);

 ConectaBD.cerrar();
 return usuarioHallado;
 }
 }catch(Exception e){
 System.out.println("Error en la base de datos.");
 e.printStackTrace();
 return null;
 }
 }
    public boolean Comprar(String cuenta, String IdCurso) {
 int resultUpdate = 0;
 try{
 conn = ConectaBD.abrir();
 stm = conn.createStatement();

 resultUpdate=stm.executeUpdate("INSERT INTO registro_cursos VALUES('" + cuenta + "','" + IdCurso +  "');");
 if(resultUpdate != 0){
 ConectaBD.cerrar();
 return true;
 }else{
 ConectaBD.cerrar();
 return false;
 }

 } catch (Exception e) {
 System.out.println("Error en la base de datos.");
 e.printStackTrace();
 return false;
 } 
}
    public boolean borrarCUrs(String cuenta, String IdCurso){
 int resultUpdate = 0;
 try{
 conn = ConectaBD.abrir();
 stm = conn.createStatement();

 resultUpdate= stm.executeUpdate("DELETE FROM Registro_cursos WHERE(cuenta='" + cuenta + "'and IdCurso='"+ IdCurso +"');");
 if(resultUpdate != 0){
 ConectaBD.cerrar();
 return true;
 }else{
 ConectaBD.cerrar();
 return false;
 }
 } catch (SQLException e) {
 System.out.println("Error en la base de datos.");
 e.printStackTrace();
 return false;
 }
 }
    public boolean borrar(String cuenta, String clave){
 int resultUpdate = 0;
 try{
 conn = ConectaBD.abrir();
 stm = conn.createStatement();

 resultUpdate= stm.executeUpdate("DELETE FROM usuarios WHERE(cuenta='" + cuenta + "'and clave='"+ clave +"');");
 if(resultUpdate != 0){
 ConectaBD.cerrar();
 return true;
 }else{
 ConectaBD.cerrar();
 return false;
 }
 } catch (SQLException e) {
 System.out.println("Error en la base de datos.");
 e.printStackTrace();
 return false;
 }
 }  
    public ArrayList<Usuario> leeTodos(){
 ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
 try{
 conn = ConectaBD.abrir();
 stm = conn.createStatement();
 usuarioResultSet = stm.executeQuery("SELECT * FROM usuarios");
 if(!usuarioResultSet.next()){
 System.out.println(" No se encontraron registros");
 ConectaBD.cerrar();
 return null;
 }else{
 do{
 cuent = usuarioResultSet.getString("cuenta");
 nom = usuarioResultSet.getString("nombre");
 passw = usuarioResultSet.getString("clave");
 mail = usuarioResultSet.getString("mail");
 usuarioHallado = new Usuario(cuent,nom,passw,mail);
 usuarios.add(usuarioHallado);
 }while(usuarioResultSet.next());
 ConectaBD.cerrar();
 return usuarios;
 }
 }catch(Exception e){
 System.out.println("Error en la base de datos.");
 e.printStackTrace();
 return null;
}
}
    public ArrayList<Cursos> leeCursos(String cuenta){
 ArrayList<Cursos> Curso = new ArrayList<Cursos>();
 try{
 conn = ConectaBD.abrir();
 stm = conn.createStatement();
 usuarioResultSet = stm.executeQuery("SELECT R.cuenta,C.* FROM bd_cursos_web.registro_cursos R join bd_cursos_web.cursos C On R.IdCurso=C.IdCurso Where R.cuenta = '"+cuenta+"' Group By C.IdCurso;");
 if(!usuarioResultSet.next()){
 System.out.println(" No se encontraron registros");
 ConectaBD.cerrar();
 return null;
 }else{
 do{
 cuent = usuarioResultSet.getString("cuenta");
 IdCurso = usuarioResultSet.getString("IdCurso");
 nom = usuarioResultSet.getString("Nom_curso");
 Precio = usuarioResultSet.getDouble("Precio");
 CursoHallado = new Cursos(IdCurso,nom,Precio,cuent);
 Curso.add(CursoHallado);
 }while(usuarioResultSet.next());
 ConectaBD.cerrar();
 return Curso;
 }
 }catch(Exception e){
 System.out.println("Error en la base de datos.");
 e.printStackTrace();
 return null;
}
}
}
