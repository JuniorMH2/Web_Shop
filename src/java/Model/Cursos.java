/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Junior
 */
public class Cursos {
    private String cuenta;
     private String IdCurso;
 private String Nom_curso;
 private Double Precio;

 public Cursos(String IdCurso, String Nom_curso,
 Double Precio,String cuenta){
      this.cuenta = cuenta;
 this.IdCurso = IdCurso;
 this.Nom_curso = Nom_curso;
 this.Precio = Precio;
  }
 public String getCuenta(){
 return cuenta;
 }
 public String getIdCurso() {
        return IdCurso;
    }

    public String getNom_curso() {
        return Nom_curso;
    }

    public Double getPrecio() {
        return Precio;
    }
}
