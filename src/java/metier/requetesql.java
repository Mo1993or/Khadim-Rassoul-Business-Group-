/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metier;


import Modele.Client;
import Modele.Commande;
import Modele.Connexion;
import Modele.Galerie;
import Modele.Message;
import Modele.User;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.awt.Desktop;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;


/**
 *
 * @author serignemor
 */
public class requetesql {
    public void ajoutUser(String login,String password) {
         try{
            Connection con= Connexion.getCon();
      Statement  st=con.createStatement(); 
    String r="insert into User(login,password) values('"+login+"','"+password+"')"; 

int i=st.executeUpdate(r);
System.out.println("rows affected by insert "+i); 
    } 
    catch(Exception e){ 
    System.out.print(e); 
    e.printStackTrace(); 
    } 
    }
    public void ajoutClient(String prenom,String nom,String adresse,String telephone,String email) {
         try{
            Connection con= Connexion.getCon();
      Statement  st=con.createStatement(); 
    String r="insert into Client(prenom,nom,adresse,telephone,email) values('"+prenom+"','"+nom+"','"+adresse+"','"+telephone+"','"+email+"')"; 

int i=st.executeUpdate(r);
System.out.println("rows affected by insert "+i); 
    } 
    catch(Exception e){ 
    System.out.print(e); 
    e.printStackTrace(); 
    } 
    }
    public void ajoutCommande(int idClient ,int idUser,String date,int idGalerie) {
         try{
            Connection con= Connexion.getCon();
      Statement  st=con.createStatement(); 
    String r="insert into Commande(idClient,idUser,dateCommande,idGalerie) values("+idClient+","+idUser+",'"+date+"',"+idGalerie+")"; 

int i=st.executeUpdate(r);
System.out.println("rows affected by insert "+i); 
    } 
    catch(Exception e){ 
    System.out.print(e); 
    e.printStackTrace(); 
    } 
    }

    public void ajoutMessage(int idUser ,String nom,String email,String corpsMess) {
         try{
            Connection con= Connexion.getCon();
      Statement  st=con.createStatement(); 
    String r="insert into Message(idUser,nom,email,corpsMess) values("+idUser+",'"+nom+"','"+email+"','"+corpsMess+"')"; 

int i=st.executeUpdate(r);
System.out.println("rows affected by insert "+i); 
    } 
    catch(Exception e){ 
    System.out.print(e); 
    e.printStackTrace(); 
    } 
    }
    public void ajoutImage(int idUser ,String categorie,String nomGalerie,String prix,String propriété) {
         try{
            Connection con= Connexion.getCon();
      Statement  st=con.createStatement(); 
    String r="insert into Galerie(idUser,categorie,nomGalerie,prix,propriété) values("+idUser+",'"+categorie+"','"+nomGalerie+"','"+prix+"','"+propriété+"')"; 

int i=st.executeUpdate(r);
System.out.println("rows affected by insert "+i); 
    } 
    catch(Exception e){ 
    System.out.print(e); 
    e.printStackTrace(); 
    } 
    }
    
    public List<User> listerUser() {
        
         List<User> listUser=new ArrayList<>();
         
              try {
		Connection con = Connexion.getCon();
                Statement  st=con.createStatement(); 
              ResultSet rs = st.executeQuery( "SELECT * from User");

				while (rs.next()) {
					User us = new User();
                                        us.setIdUser(rs.getInt("idUser"));
					us.setLogin(rs.getString("login"));
					us.setPassword(rs.getString("password"));
					
					
					listUser.add(us);
				}}
                catch (Exception er_rs) {
				System.out.println("Erreur ResultSet " + er_rs.getMessage());
			}
		
		 return listUser;
    }
    public User listeUser() {
        
         User us = new User();
         
              try {
		Connection con = Connexion.getCon();
                Statement  st=con.createStatement(); 
              ResultSet rs = st.executeQuery( "SELECT * from User");

				while (rs.next()) {
					
                                        us.setIdUser(rs.getInt("idUser"));
					us.setLogin(rs.getString("login"));
					us.setPassword(rs.getString("password"));
					
					
					
				}}
                catch (Exception er_rs) {
				System.out.println("Erreur ResultSet " + er_rs.getMessage());
			}
		
		 return us;
    }
    public Client listerClient() {
        
         Client us = new Client();
         
              try {
		Connection con = Connexion.getCon();
                Statement  st=con.createStatement(); 
              ResultSet rs = st.executeQuery( "SELECT * from Client");

				while (rs.next()) {
					
                                        us.setIdClient(rs.getInt("idClient"));
					
				}}
                catch (Exception er_rs) {
				System.out.println("Erreur ResultSet " + er_rs.getMessage());
			}
		
		 return us;
    }
    public List<Commande> listerCommande() {
        
         List<Commande> listCo=new ArrayList<>();
         
              try {
		Connection con = Connexion.getCon();
                Statement  st=con.createStatement(); 
              ResultSet rs = st.executeQuery( "SELECT * from Commande c,Client cl,Galerie gl where cl.idClient=c.idClient and gl.idGalerie=c.idGalerie");

				while (rs.next()) {
					Commande us = new Commande();
                                        us.setIdClient(rs.getInt("idClient"));
                                        us.setIdCommande(rs.getInt("idCommande"));
                                        us.setIdGalerie(rs.getInt("idGalerie"));
                                        us.setDateCommande(rs.getString("dateCommande"));
					us.setPrenom(rs.getString("prenom"));
                                        us.setNom(rs.getString("nom"));
                                        us.setAdresse(rs.getString("adresse"));
					us.setTelephone(rs.getString("telephone"));
                                        us.setEmail(rs.getString("email"));
					us.setNomGalerie(rs.getString("nomGalerie"));
					us.setPrix(rs.getString("prix"));
                                        us.setPropriete(rs.getString("propriété"));
					
					
					listCo.add(us);
				}}
                catch (Exception er_rs) {
				System.out.println("Erreur ResultSet " + er_rs.getMessage());
			}
		
		 return listCo;
    }
      public List<Galerie> listerGalerie() {
        
         List<Galerie> listGal=new ArrayList<>();
         
              try {
		Connection con = Connexion.getCon();
                Statement  st=con.createStatement(); 
              ResultSet rs = st.executeQuery( "SELECT * from Galerie");

				while (rs.next()) {
					Galerie us = new Galerie();
                                        us.setIdGalerie(rs.getInt("idGalerie"));
                                        us.setIdUser(rs.getInt("idUser"));
					us.setCategorie(rs.getString("categorie"));
					us.setNomGalerie(rs.getString("nomGalerie"));
					
					
					listGal.add(us);
				}}
                catch (Exception er_rs) {
				System.out.println("Erreur ResultSet " + er_rs.getMessage());
			}
		
		 return listGal;
    }
      public List<Galerie> listerGalerieRes() {
        
         List<Galerie> listGal=new ArrayList<>();
         
              try {
		Connection con = Connexion.getCon();
                Statement  st=con.createStatement(); 
              ResultSet rs = st.executeQuery( "SELECT * from Galerie where categorie='Reseaux informatique'");

				while (rs.next()) {
					Galerie us = new Galerie();
                                        us.setIdGalerie(rs.getInt("idGalerie"));
                                        us.setIdUser(rs.getInt("idUser"));
					us.setCategorie(rs.getString("categorie"));
					us.setNomGalerie(rs.getString("nomGalerie"));
					
					
					listGal.add(us);
				}}
                catch (Exception er_rs) {
				System.out.println("Erreur ResultSet " + er_rs.getMessage());
			}
		
		 return listGal;
    }
      public List<Galerie> listerGalerieIm() {
        
         List<Galerie> listGal=new ArrayList<>();
         
              try {
		Connection con = Connexion.getCon();
                Statement  st=con.createStatement(); 
              ResultSet rs = st.executeQuery( "SELECT * from Galerie  where categorie='Immobilier'");

				while (rs.next()) {
					Galerie us = new Galerie();
                                        us.setIdGalerie(rs.getInt("idGalerie"));
                                        us.setIdUser(rs.getInt("idUser"));
					us.setCategorie(rs.getString("categorie"));
					us.setNomGalerie(rs.getString("nomGalerie"));
					
					
					listGal.add(us);
				}}
                catch (Exception er_rs) {
				System.out.println("Erreur ResultSet " + er_rs.getMessage());
			}
		
		 return listGal;
    }
      public List<Galerie> listerGalerieMat() {
        
         List<Galerie> listGal=new ArrayList<>();
         
              try {
		Connection con = Connexion.getCon();
                Statement  st=con.createStatement(); 
              ResultSet rs = st.executeQuery( "SELECT * from Galerie where  categorie='Vente Materiel'");

				while (rs.next()) {
					Galerie us = new Galerie();
                                        us.setIdGalerie(rs.getInt("idGalerie"));
                                        us.setIdUser(rs.getInt("idUser"));
					us.setCategorie(rs.getString("categorie"));
					us.setNomGalerie(rs.getString("nomGalerie"));
                                        us.setPrix(rs.getString("prix"));
                                        us.setPropriété(rs.getString("propriété"));
					
					
					listGal.add(us);
				}}
                catch (Exception er_rs) {
				System.out.println("Erreur ResultSet " + er_rs.getMessage());
			}
		
		 return listGal;
    }
      public List<Galerie> listerGalerieInf() {
        
         List<Galerie> listGal=new ArrayList<>();
         
              try {
		Connection con = Connexion.getCon();
                Statement  st=con.createStatement(); 
              ResultSet rs = st.executeQuery( "SELECT * from Galerie where categorie='Infographie'");

				while (rs.next()) {
					Galerie us = new Galerie();
                                        us.setIdGalerie(rs.getInt("idGalerie"));
                                        us.setIdUser(rs.getInt("idUser"));
					us.setCategorie(rs.getString("categorie"));
					us.setNomGalerie(rs.getString("nomGalerie"));
					
					
					listGal.add(us);
				}}
                catch (Exception er_rs) {
				System.out.println("Erreur ResultSet " + er_rs.getMessage());
			}
		
		 return listGal;
    }
      public List<Galerie> listerGalerieHab() {
        
         List<Galerie> listGal=new ArrayList<>();
         
              try {
		Connection con = Connexion.getCon();
                Statement  st=con.createStatement(); 
              ResultSet rs = st.executeQuery( "SELECT * from Galerie where categorie='Habillement'");

				while (rs.next()) {
					Galerie us = new Galerie();
                                        us.setIdGalerie(rs.getInt("idGalerie"));
                                        us.setIdUser(rs.getInt("idUser"));
					us.setCategorie(rs.getString("categorie"));
					us.setNomGalerie(rs.getString("nomGalerie"));
					
					
					listGal.add(us);
				}}
                catch (Exception er_rs) {
				System.out.println("Erreur ResultSet " + er_rs.getMessage());
			}
		
		 return listGal;
    }
    public List<Message> listerMess() {
        
         List<Message> listMess=new ArrayList<>();
         
              try {
		Connection con = Connexion.getCon();
                Statement  st=con.createStatement(); 
              ResultSet rs = st.executeQuery( "SELECT * from Message");

				while (rs.next()) {
					Message ms = new Message();
                                        ms.setIdMess(rs.getInt("idMess"));
                                        ms.setIdUser(rs.getInt("idUser"));
					ms.setNom(rs.getString("nom"));
					ms.setEmail(rs.getString("email"));
					ms.setCorpsMess(rs.getString("corpsMess"));
					
					listMess.add(ms);
				}}
                catch (Exception er_rs) {
				System.out.println("Erreur ResultSet " + er_rs.getMessage());
			}
		
		 return listMess;
    }
          public void supprimer(int idMess) {
         try{
            Connection con= Connexion.getCon();
      Statement  st=con.createStatement(); 
    String r="delete from message where idMess="+idMess+""; 

int i=st.executeUpdate(r);
System.out.println("rows affected by insert "+i); 
    } 
    catch(Exception e){ 
    System.out.print(e); 
    e.printStackTrace(); 
    } 
    }
 public void supprimerIm(int idGalerie) {
         try{
            Connection con= Connexion.getCon();
      Statement  st=con.createStatement(); 
    String r="delete from Galerie where idGalerie="+idGalerie+""; 

int i=st.executeUpdate(r);
System.out.println("rows affected by insert "+i); 
    } 
    catch(Exception e){ 
    System.out.print(e); 
    e.printStackTrace(); 
    } 
    }
 public void supprimerMat(int idGalerie) {
         try{
            Connection con= Connexion.getCon();
      Statement  st=con.createStatement(); 
    String r="delete from Galerie where idGalerie="+idGalerie+""; 

int i=st.executeUpdate(r);
System.out.println("rows affected by insert "+i); 
    } 
    catch(Exception e){ 
    System.out.print(e); 
    e.printStackTrace(); 
    } 
    }
 public void supprimerInf(int idGalerie) {
         try{
            Connection con= Connexion.getCon();
      Statement  st=con.createStatement(); 
    String r="delete from Galerie where idGalerie="+idGalerie+""; 

int i=st.executeUpdate(r);
System.out.println("rows affected by insert "+i); 
    } 
    catch(Exception e){ 
    System.out.print(e); 
    e.printStackTrace(); 
    } 
    }
 public void supprimerRes(int idGalerie) {
         try{
            Connection con= Connexion.getCon();
      Statement  st=con.createStatement(); 
    String r="delete from Galerie where idGalerie="+idGalerie+""; 

int i=st.executeUpdate(r);
System.out.println("rows affected by insert "+i); 
    } 
    catch(Exception e){ 
    System.out.print(e); 
    e.printStackTrace(); 
    } 
    }
 public void supprimerHab(int idGalerie) {
         try{
            Connection con= Connexion.getCon();
      Statement  st=con.createStatement(); 
    String r="delete from Galerie where idGalerie="+idGalerie+""; 

int i=st.executeUpdate(r);
System.out.println("rows affected by insert "+i); 
    } 
    catch(Exception e){ 
    System.out.print(e); 
    e.printStackTrace(); 
    } 
    }
 public void supprimerCo(int idCommande) {
         try{
            Connection con= Connexion.getCon();
      Statement  st=con.createStatement(); 
    String r="delete from Commande where idCommande="+idCommande+""; 

int i=st.executeUpdate(r);
System.out.println("rows affected by insert "+i); 
    } 
    catch(Exception e){ 
    System.out.print(e); 
    e.printStackTrace(); 
    } 
    }
 public void Update(int iduser,String login,String password) {
         try{
            Connection con= Connexion.getCon();
      Statement  st=con.createStatement(); 
    String r="update user set  login='"+login+"' , password='"+password+"' where iduser="+iduser+""; 

int i=st.executeUpdate(r);
System.out.println("rows affected by insert "+i); 
    } 
    catch(Exception e){ 
    System.out.print(e); 
    e.printStackTrace(); 
    } 
    }
 public void CommandeImprimer(String date,int idCommande,String prenom,String nom,String adresse,String telephone,String email,String prix,String propriété,String image1) {
	
			String chemin="F:/Facturekrbg.pdf";				
			Document document = new Document(PageSize.A5);
		        
			try {
				
				File fil = new File(chemin);

				PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(fil));
	            document.open();

	            Paragraph p = new Paragraph();
                     Paragraph p1 = new Paragraph();
	           	            
	            Image image = Image.getInstance(""+image1+"");
				image.scaleAbsolute(350, 60);		  //  TAILLE DE L'IMAGE HAUTEUR - LARGEUR
				image.setTop(0);  //  DEPLACEENT DANS LA SCENE
				p.add(image);
				
				 p.add("FACTURE DE LIVRAISON \n ");
		            p.add("----------------- \n");
		            
		            p.add("\n ******************************************************* \n");
		            p.add("\n DATE DE LA COMMANDE                   "+date+"                     \n");

			   p1.add("\n                                                                            Signature:                     \n");
                           
                           p1.setAlignment(Element.ALIGN_BOTTOM);
//	            -------------------------------
	            for (int i = 0; i < 2; i++) {
	            	p.add("\n");
				}
	            p.setAlignment(Element.ALIGN_CENTER);
	            document.add(p);
                    
	            // ------------------------------------ENTETE TABLEAU
	            
	            PdfPTable table = new PdfPTable(8);
//	          table.setSkipFirstHeader(true);
//	            System.out.println(PageSize.A4.getHeight()/25);
//	          table.setSkipLastFooter(true);
	            table.setWidthPercentage(120);
//				table.getDefaultCell().setBorder(Rectangle.NO_BORDER); // ELIMIME LE BORDER
	            table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
	            table.getDefaultCell().setVerticalAlignment(Element.ALIGN_MIDDLE);
	            table.getDefaultCell().setFixedHeight(100);
	            
	            PdfPCell enteteTatb = new PdfPCell(new Paragraph("Commande "));
	            enteteTatb.setBackgroundColor(new BaseColor(255, 255, 0));  // BACKGROUNG COLOR - YELLOW COLOR
	            enteteTatb.setColspan(8);

	            enteteTatb.setHorizontalAlignment(Element.ALIGN_CENTER);
	            table.addCell(enteteTatb);
	            
	            
	           
	            
	            //----------------------------------------
	            //----------------------------------------
	            
//	            Article art = new Article();
	            
	            table.addCell(new Phrase(new Chunk("Numeros Commande", FontFactory.getFont(FontFactory.HELVETICA, 9, Font.BOLD))));
			    table.addCell(new Phrase(new Chunk("Prenom", FontFactory.getFont(FontFactory.HELVETICA, 9, Font.BOLD))));
			    table.addCell(new Phrase(new Chunk("Nom", FontFactory.getFont(FontFactory.HELVETICA, 9, Font.BOLD))));
			    table.addCell(new Phrase(new Chunk("Adresse", FontFactory.getFont(FontFactory.HELVETICA, 9, Font.BOLD))));
			    table.addCell(new Phrase(new Chunk("Telephone", FontFactory.getFont(FontFactory.HELVETICA, 9, Font.BOLD))));
                            table.addCell(new Phrase(new Chunk("Email", FontFactory.getFont(FontFactory.HELVETICA, 9, Font.BOLD))));
			    table.addCell(new Phrase(new Chunk("Materiel Commandée et Propriété", FontFactory.getFont(FontFactory.HELVETICA, 9, Font.BOLD))));
			    table.addCell(new Phrase(new Chunk("Prix", FontFactory.getFont(FontFactory.HELVETICA, 9, Font.BOLD))));

			    
			    
			    	
			    	table.addCell(new Phrase(new Chunk(""+idCommande , FontFactory.getFont(FontFactory.HELVETICA, 9, Font.NORMAL) ) ));		    	
				    table.addCell(new Phrase(new Chunk(""+prenom , FontFactory.getFont(FontFactory.HELVETICA, 9, Font.NORMAL) ) ));
				    table.addCell(new Phrase(new Chunk(""+nom , FontFactory.getFont(FontFactory.HELVETICA, 9, Font.NORMAL) ) ));
				    table.addCell(new Phrase(new Chunk(""+adresse, FontFactory.getFont(FontFactory.HELVETICA, 9, Font.NORMAL) ) ));

				    table.addCell(new Phrase(new Chunk(""+telephone , FontFactory.getFont(FontFactory.HELVETICA, 9, Font.NORMAL) ) ));
                                    table.addCell(new Phrase(new Chunk(""+email , FontFactory.getFont(FontFactory.HELVETICA, 9, Font.NORMAL) ) ));
				    table.addCell(new Phrase(new Chunk(""+propriété, FontFactory.getFont(FontFactory.HELVETICA, 9, Font.NORMAL) ) ));

				    table.addCell(new Phrase(new Chunk(""+prix , FontFactory.getFont(FontFactory.HELVETICA, 9, Font.NORMAL) ) ));

				    
			    	
			    	
			    	
			    
			    
			    
			    document.add(table);
                            document.add(p1);
			    document.close();
	            System.err.println("Reussi");
			    
			
	            if (fil.exists()) {

        			if (Desktop.isDesktopSupported()) {
        				try {
							Desktop.getDesktop().open(fil);
						} catch (IOException e) {
							e.printStackTrace();
						}
        			} else {	System.out.println("IMPOSSIBLE");	}

        		} else {	System.out.println("FICHIER N'EXISTE PAS !");	}

	        
	   	}
			catch (DocumentException | IOException ex) {
	            ex.printStackTrace();
	        
	        }
			}
	 }
