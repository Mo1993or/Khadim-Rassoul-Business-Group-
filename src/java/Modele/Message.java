/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modele;

/**
 *
 * @author serignemor
 */
public class Message {
     private int idMess;
    private int idUser;
   private String nom;
    private String email;
    private String corpsMess;

    public Message(int idMess,int idUser, String nom, String email, String corpsMess) {
        this.idUser = idUser;
        this.nom = nom;
        this.email = email;
        this.corpsMess = corpsMess;
        this.idMess=idMess;
    }

    public Message() {
    }

    public int getIdMess() {
        return idMess;
    }

    public void setIdMess(int idMess) {
        this.idMess = idMess;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCorpsMess() {
        return corpsMess;
    }

    public void setCorpsMess(String corpsMess) {
        this.corpsMess = corpsMess;
    }
    
    
}
