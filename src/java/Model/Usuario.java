/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Junior
 */
public class Usuario {
    private String cuenta;
 private String nombre;
 private String clave;
 private String mail;

 public Usuario(String cuenta, String nombre,
 String clave, String mail){
 this.cuenta = cuenta;
 this.nombre = nombre;
 this.clave = clave;
 this.mail = mail;
  }

 public String getCuenta(){
 return cuenta;
 }

 public String getNombre(){
 return nombre;
 }

 public String getClave(){
 return clave;
 }

 public String getMail(){
 return mail;
 }
}
