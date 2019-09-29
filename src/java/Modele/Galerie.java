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
public class Galerie {
    private int idGalerie;
    private int idUser;
   private String categorie;
    private String nomGalerie;
    private String prix;
    private String propriété;

    public Galerie() {
    }

    public Galerie(int idGalerie, int idUser, String categorie, String nomGalerie,String prix,String propriété) {
        this.idGalerie = idGalerie;
        this.idUser = idUser;
        this.categorie = categorie;
        this.nomGalerie = nomGalerie;
        this.prix = prix;
        this.propriété = propriété;
    }

    public String getPrix() {
        return prix;
    }

    public void setPrix(String prix) {
        this.prix = prix;
    }

    public String getPropriété() {
        return propriété;
    }

    public void setPropriété(String propriété) {
        this.propriété = propriété;
    }

    public int getIdGalerie() {
        return idGalerie;
    }

    public void setIdGalerie(int idGalerie) {
        this.idGalerie = idGalerie;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getCategorie() {
        return categorie;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public String getNomGalerie() {
        return nomGalerie;
    }

    public void setNomGalerie(String nomGaalerie) {
        this.nomGalerie = nomGaalerie;
    }
    
    
}
