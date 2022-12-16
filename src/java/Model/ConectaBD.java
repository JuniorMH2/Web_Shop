/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Junior
 */
public class ConectaBD {
    public static Connection con=null;
    
 private static String bd = "bd_cursos_web";
 /**
      
      public static String usuario = "root";
 public static String passw = "mysql2";
 public static String url = "jdbc:mysql://localhost/"+bd;
    */
 public static String usuario = "baseonli";
      public static String passw = "123456780";
      public static String url = "jdbc:mysql://db4free.net:3306/"+bd;
 /**
      public static String usuario = "baseonli";
      public static String passw = "123456780";
      public static String url = "jdbc:mysql://db4free.net:3306/"+bd;
    */
 public static Connection abrir(){
 try{
 Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection(url,usuario,passw);
 System.out.println("Conexión exitosa:"+con);

 } catch (Exception e) {
 System.out.println("Error en la conexion...");
 e.printStackTrace();
 return null;
 }
 return con;
 }

 public static void cerrar(){
 try{
 if(con != null)
 con.close();
 } catch (Exception e){
 System.out.println("Error: No se logro cerrar la conexion:\n"+e);
 }
 } 
}
