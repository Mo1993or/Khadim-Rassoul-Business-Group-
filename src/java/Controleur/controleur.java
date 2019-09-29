/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controleur;



import Modele.Client;
import Modele.User;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import metier.requetesql;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 20)

/**

 *
 * @author serignemor
 */
public class controleur extends HttpServlet {

    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
 private final  String repfichier= "F:/cours l3/test/KRBG/web/photo";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //Requetesql rqs=new Requetesql();
       
  //      factory.setRepository(ConfigServlet.getTempDirectory());
                 RequestDispatcher rd=null;
                  requetesql rqs= new  requetesql();
                 request.setCharacterEncoding("utf-8");
        String action = request.getParameter("action");
        if (action == null) {
            
            request.setAttribute("listerGalerieRes", rqs.listerGalerieRes());
            request.setAttribute("listerGalerieIm", rqs.listerGalerieIm());
            request.setAttribute("listerGalerieMat", rqs.listerGalerieMat());
            request.setAttribute("listerGalerieInf", rqs.listerGalerieInf());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
            rd = request.getRequestDispatcher("accueil.jsp");
        }
        
        else if (action.equals("envoyer")) {
            
            String nom = request.getParameter("nom");
            String email = request.getParameter("email");
            String message = request.getParameter("message");
            
            rqs.ajoutMessage(1, nom, email, message);
            request.setAttribute("listerGalerieRes", rqs.listerGalerieRes());
            request.setAttribute("listerGalerieIm", rqs.listerGalerieIm());
            request.setAttribute("listerGalerieMat", rqs.listerGalerieMat());
            request.setAttribute("listerGalerieInf", rqs.listerGalerieInf());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
            rd = request.getRequestDispatcher("accueil.jsp");
        }
        else if (action.equals("connexion")) {
            String con = request.getParameter("con");
            
            request.setAttribute("conn", con);
            rd = request.getRequestDispatcher("accueil.jsp");
        }
        else if (action.equals("deconnexion")) {
            String con = request.getParameter("con");
            
            request.setAttribute("conn", con);
             request.setAttribute("listerGalerieRes", rqs.listerGalerieRes());
            request.setAttribute("listerGalerieIm", rqs.listerGalerieIm());
            request.setAttribute("listerGalerieMat", rqs.listerGalerieMat());
            request.setAttribute("listerGalerieInf", rqs.listerGalerieInf());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
          
            rd = request.getRequestDispatcher("accueil.jsp");
        }
        else if (action.equals("accueil")) {
            
            
             request.setAttribute("listerGalerieRes", rqs.listerGalerieRes());
            request.setAttribute("listerGalerieIm", rqs.listerGalerieIm());
            request.setAttribute("listerGalerieMat", rqs.listerGalerieMat());
            request.setAttribute("listerGalerieInf", rqs.listerGalerieInf());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
          
            rd = request.getRequestDispatcher("accueil.jsp");
        }
        else if (action.equals("prof")) {
           
            
            
            int idus = Integer.parseInt(request.getParameter("idus"));
            String login=request.getParameter("login");
            String password=request.getParameter("password");
            
            rqs.Update(idus, login, password);
             User us = rqs.listeUser();
            request.setAttribute("us", us);
                                 request.setAttribute("listerCommande", rqs.listerCommande());
            request.setAttribute("listerMess", rqs.listerMess());
             request.setAttribute("listerGalerieRes", rqs.listerGalerieRes());
            request.setAttribute("listerGalerieIm", rqs.listerGalerieIm());
            request.setAttribute("listerGalerieMat", rqs.listerGalerieMat());
            request.setAttribute("listerGalerieInf", rqs.listerGalerieInf());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
       
            rd = request.getRequestDispatcher("Administrateur.jsp");
        }
        else if (action.equals("supprimer")) {
            User us = rqs.listeUser();
            
            request.setAttribute("us", us);
            int idm = Integer.parseInt(request.getParameter("idmess"));
            
            rqs.supprimer(idm);
            request.setAttribute("listerMess", rqs.listerMess());
            rd = request.getRequestDispatcher("Administrateur.jsp");
        }
        else if (action.equals("supprimerIm")) {
            int idim = Integer.parseInt(request.getParameter("idim"));
            
            rqs.supprimerIm(idim);
            User us = rqs.listeUser();
            
            request.setAttribute("us", us);
                                 request.setAttribute("listerCommande", rqs.listerCommande());
            request.setAttribute("listerMess", rqs.listerMess());
             request.setAttribute("listerGalerieRes", rqs.listerGalerieRes());
            request.setAttribute("listerGalerieIm", rqs.listerGalerieIm());
            request.setAttribute("listerGalerieMat", rqs.listerGalerieMat());
            request.setAttribute("listerGalerieInf", rqs.listerGalerieInf());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
            rd = request.getRequestDispatcher("Administrateur.jsp");
        }
        else if (action.equals("supprimerRes")) {
            int idres = Integer.parseInt(request.getParameter("idres"));
            
            rqs.supprimerRes(idres);
            User us = rqs.listeUser();
            
            request.setAttribute("us", us);
                                 request.setAttribute("listerCommande", rqs.listerCommande());
            request.setAttribute("listerMess", rqs.listerMess());
             request.setAttribute("listerGalerieRes", rqs.listerGalerieRes());
            request.setAttribute("listerGalerieIm", rqs.listerGalerieIm());
            request.setAttribute("listerGalerieMat", rqs.listerGalerieMat());
            request.setAttribute("listerGalerieInf", rqs.listerGalerieInf());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
            rd = request.getRequestDispatcher("Administrateur.jsp");
        }
        else if (action.equals("supprimerInf")) {
            int idinf = Integer.parseInt(request.getParameter("idinf"));
            
            rqs.supprimerInf(idinf);
            User us = rqs.listeUser();
            
            request.setAttribute("us", us);
                                 request.setAttribute("listerCommande", rqs.listerCommande());
            request.setAttribute("listerMess", rqs.listerMess());
             request.setAttribute("listerGalerieRes", rqs.listerGalerieRes());
            request.setAttribute("listerGalerieIm", rqs.listerGalerieIm());
            request.setAttribute("listerGalerieMat", rqs.listerGalerieMat());
            request.setAttribute("listerGalerieInf", rqs.listerGalerieInf());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
            rd = request.getRequestDispatcher("Administrateur.jsp");
        }
        else if (action.equals("imp")) {
            int idc = Integer.parseInt(request.getParameter("idc"));
            String date=request.getParameter("date");
            String pr=request.getParameter("prn");
            String nm=request.getParameter("nm");
            String adr=request.getParameter("adr");
            String tel=request.getParameter("tel");
            String em=request.getParameter("em");
            String prix=request.getParameter("prix");
            String pro=request.getParameter("pro");
            
            String im="F:\\cours l3\\test\\KRBG\\web\\images\\krbg.jpg";
            
            rqs.CommandeImprimer(date, idc, pr, nm, adr, tel, em, prix, pro,im);
            
            User us = rqs.listeUser();
            
            request.setAttribute("us", us);
                                 request.setAttribute("listerCommande", rqs.listerCommande());
           request.setAttribute("listerMess", rqs.listerMess());
             request.setAttribute("listerGalerieRes", rqs.listerGalerieRes());
            request.setAttribute("listerGalerieIm", rqs.listerGalerieIm());
            request.setAttribute("listerGalerieMat", rqs.listerGalerieMat());
            request.setAttribute("listerGalerieInf", rqs.listerGalerieInf());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
            rd = request.getRequestDispatcher("Administrateur.jsp");
        }
        else if (action.equals("supprimerMat")) {
            int idmat = Integer.parseInt(request.getParameter("idmat"));
            
            rqs.supprimerMat(idmat);
            User us = rqs.listeUser();
            
            request.setAttribute("us", us);
                                 request.setAttribute("listerCommande", rqs.listerCommande());
            request.setAttribute("listerMess", rqs.listerMess());
             request.setAttribute("listerGalerieRes", rqs.listerGalerieRes());
            request.setAttribute("listerGalerieIm", rqs.listerGalerieIm());
            request.setAttribute("listerGalerieMat", rqs.listerGalerieMat());
            request.setAttribute("listerGalerieInf", rqs.listerGalerieInf());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
            rd = request.getRequestDispatcher("Administrateur.jsp");
        }
        else if (action.equals("supprimerco")) {
            int idco = Integer.parseInt(request.getParameter("idco"));
            
            rqs.supprimerCo(idco);
            User us = rqs.listeUser();
            
            request.setAttribute("us", us);
                                 request.setAttribute("listerCommande", rqs.listerCommande());
            request.setAttribute("listerMess", rqs.listerMess());
             request.setAttribute("listerGalerieRes", rqs.listerGalerieRes());
            request.setAttribute("listerGalerieIm", rqs.listerGalerieIm());
            request.setAttribute("listerGalerieMat", rqs.listerGalerieMat());
            request.setAttribute("listerGalerieInf", rqs.listerGalerieInf());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
            rd = request.getRequestDispatcher("Administrateur.jsp");
        }
        
        else if (action.equals("supprimerHab")) {
            int idmat = Integer.parseInt(request.getParameter("idhab"));
            
            rqs.supprimerHab(idmat);
            User us = rqs.listeUser();
            
            request.setAttribute("us", us);
                                 request.setAttribute("listerCommande", rqs.listerCommande());
            request.setAttribute("listerMess", rqs.listerMess());
             request.setAttribute("listerGalerieRes", rqs.listerGalerieRes());
            request.setAttribute("listerGalerieIm", rqs.listerGalerieIm());
            request.setAttribute("listerGalerieMat", rqs.listerGalerieMat());
            request.setAttribute("listerGalerieInf", rqs.listerGalerieInf());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
            rd = request.getRequestDispatcher("Administrateur.jsp");
        }
        else if (action.equals("ajoutgl")) {
            
            String categorie=request.getParameter("categorie");
            String prix=request.getParameter("prix");
            String propriété=request.getParameter("propriété");
            
           
           Part partImg1 = request.getPart("photo");

            String image1 = "";

            String cheminImg = repfichier + File.separator;
            image1 = monFichier(partImg1);
            
            File f = new File(cheminImg  + image1);
            partImg1.write(cheminImg  + image1);
            System.out.println(cheminImg + image1);
            rqs.ajoutImage(1, categorie, image1,prix,propriété);
            User us = rqs.listeUser();
            
            request.setAttribute("us", us);
                                 request.setAttribute("listerCommande", rqs.listerCommande());
            request.setAttribute("listerGalerieRes", rqs.listerGalerieRes());
            request.setAttribute("listerGalerieIm", rqs.listerGalerieIm());
            request.setAttribute("listerGalerieMat", rqs.listerGalerieMat());
            request.setAttribute("listerGalerieInf", rqs.listerGalerieInf());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());

            rd = request.getRequestDispatcher("Administrateur.jsp");
        }
        else if (action.equals("achat")) {
            
            int idg =Integer.parseInt(request.getParameter("idg")) ;
            HttpSession session = request.getSession();
            
            session.setAttribute("idgl", idg);
            
            rd = request.getRequestDispatcher("Achats.jsp");
        }
         else if (action.equals("valachat")) {
            String prenom = request.getParameter("prenom");
            String nom = request.getParameter("nom");
            String adr = request.getParameter("adresse");
            String email = request.getParameter("email");
             int idgl =Integer.parseInt(request.getParameter("idgl")) ;
            
             String tel1 = request.getParameter("telephone1");
              String tel2 = request.getParameter("telephone2");
            String tel =""+tel1+""+tel2;
            
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String today = sdf.format(new Date());
            
            rqs.ajoutClient(prenom, nom, adr, tel, email);
            Client c=rqs.listerClient();
            rqs.ajoutCommande(c.getIdClient(),1 , today,idgl);
            String message="votre commande a été bien prise en compte";
            request.setAttribute("message", message);
            rd = request.getRequestDispatcher("Achats.jsp");
        }
        else if (action.equals("connecter")) {
            String em = request.getParameter("login");
            String mp = request.getParameter("password");
            String testt = request.getParameter("testt");
            String toff = request.getParameter("tof");
            String prix = request.getParameter("prix");
            String propriete = request.getParameter("propriete");
            
            HttpSession session = request.getSession();
            
            session.setAttribute("prix", prix);
            session.setAttribute("toff", toff);
            session.setAttribute("propriete", propriete);
            
            String alert="Login ou mot de passe incorrect!";
            

            List<User> liste = rqs.listerUser();
            
            for (User u : liste) {
              

                
                if ((em.equals(u.getLogin())) && (mp.equals(u.getPassword()))) {
                   User us = rqs.listeUser();
            
            request.setAttribute("us", us);
                    request.setAttribute("listerMess", rqs.listerMess());
                     request.setAttribute("listerCommande", rqs.listerCommande());
                    request.setAttribute("listerGalerieRes", rqs.listerGalerieRes());
            request.setAttribute("listerGalerieIm", rqs.listerGalerieIm());
            request.setAttribute("listerGalerieMat", rqs.listerGalerieMat());
            request.setAttribute("listerGalerieInf", rqs.listerGalerieInf());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
                    rd = request.getRequestDispatcher("Administrateur.jsp");
                    
                }else{
                    request.setAttribute("testt", testt);
                    request.setAttribute("alerte", alert);
             request.setAttribute("listerGalerieRes", rqs.listerGalerieRes());
            request.setAttribute("listerGalerieIm", rqs.listerGalerieIm());
            request.setAttribute("listerGalerieMat", rqs.listerGalerieMat());
            request.setAttribute("listerGalerieInf", rqs.listerGalerieInf());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
                    rd = request.getRequestDispatcher("accueil.jsp");
                }
            
            } 
            
        }
        else if (action.equals("qit")) {
            request.setAttribute("listerGalerieRes", rqs.listerGalerieRes());
            request.setAttribute("listerGalerieIm", rqs.listerGalerieIm());
            request.setAttribute("listerGalerieMat", rqs.listerGalerieMat());
            request.setAttribute("listerGalerieInf", rqs.listerGalerieInf());
            request.setAttribute("listerGalerieHab", rqs.listerGalerieHab());
            rd = request.getRequestDispatcher("accueil.jsp");
        }
  
        if (rd!= null) {
          rd.forward(request, response);  
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
public String monFichier(Part part){
        String contenu= part.getHeader("content-disposition");
        String[] items = contenu.split(";");
        for( String s:items){
            if(s.trim().startsWith("filename")){
                return s.substring(s.indexOf("=") + 2,s.length() - 1);
            }
        }
         return "";
    }
}
