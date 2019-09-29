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
public class Commande {
    private int idClient;
    private int idCommande;
    private int idGalerie;
    private String dateCommande;
    private String prenom;
    private String nom;
    private String adresse;
    private String telephone;
    private String email;
    private String nomGalerie;
    private String prix;
    private String propriete;

    public Commande(int idClient, int idCommande,int idGalerie, String dateCommande, String prenom, String nom, String adresse, String telephone, String email,String nomGalerie,String prix,String propriete) {
        this.idClient = idClient;
        this.idCommande = idCommande;
        this.idGalerie = idGalerie;
        this.dateCommande = dateCommande;
        this.prenom = prenom;
        this.nom = nom;
        this.adresse = adresse;
        this.telephone = telephone;
        this.email = email;
        this.nomGalerie = nomGalerie;
        this.prix = prix;
        this.propriete = propriete;
    }

    public Commande() {
    }

    public int getIdGalerie() {
        return idGalerie;
    }

    public void setIdGalerie(int idGalerie) {
        this.idGalerie = idGalerie;
    }

    public String getNomGalerie() {
        return nomGalerie;
    }

    public void setNomGalerie(String nomGalerie) {
        this.nomGalerie = nomGalerie;
    }

    public String getPrix() {
        return prix;
    }

    public void setPrix(String prix) {
        this.prix = prix;
    }

    public String getPropriete() {
        return propriete;
    }

    public void setPropriete(String propriete) {
        this.propriete = propriete;
    }

    
    public int getIdClient() {
        return idClient;
    }

    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }

    public int getIdCommande() {
        return idCommande;
    }

    public void setIdCommande(int idCommande) {
        this.idCommande = idCommande;
    }

    public String getDateCommande() {
        return dateCommande;
    }

    public void setDateCommande(String dateCommande) {
        this.dateCommande = dateCommande;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
}
