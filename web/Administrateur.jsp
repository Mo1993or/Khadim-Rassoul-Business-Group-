<%-- 
    Document   : accueil
    Created on : 16 mai 2019, 20:51:42
    Author     : serignemor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Urbanic Free Website Template</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <!--
        
        Urbanic Template
        
        http://www.templatemo.com/tm-395-urbanic
        
        -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--<link rel="shortcut icon" href="PUT YOUR FAVICON HERE">-->

        <!-- Google Web Font Embed -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css'>

        <!-- Custom styles for this template -->
        <link href="js/colorbox/colorbox.css"  rel='stylesheet' type='text/css'>
        <link href="css/templatemo_style.css"  rel='stylesheet' type='text/css'>

    <link href="test.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        <script>
                            function myFunction() {
                                var choix = document.getElementById("historique").value;
                                if (choix == "Vente Materiel") {
                                    document.getElementById("demo").innerHTML = codePats;
                                }
                                if (choix == "") {
                                    document.getElementById("demo").innerHTML = "";
                                }
                                
                            }
                        </script>

    </head>

    <body>

        <!--Acceuil -->
        <!--///////////////////////////////////////////////////////En tete --->
        <div class="templatemo-top-bar" id="templatemo-top">
            <div class="container">
                <div class="subheader">

                    <!--<div id="phone" class="pull-left">
                            <img src="images/phone.png" alt="phone"/>
                            090-080-0110
                    </div>
                    <div id="email" class="pull-right">
                            <img src="images/email.png" alt="email"/>
                            info@company.com
                    </div>-->
                </div>
            </div>
        </div>
        <!--/////////////////////////////////////////////////////////////////Fin En tete-->
        <!--/////////////////////////////////////////////////////////////////Banniere -->
        <div class="templatemo-top-menu">
            <div class="container">
                <!-- Static navbar -->
                <div class="navbar navbar-default" role="navigation">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a href="#" class="navbar-brand"><img src="images/krbg.jpg" style="width:  200px;height: 70px" alt="Urbanic Template" title="Urbanic Template" /></a>
                        </div>
                        <div class="navbar-collapse collapse" id="templatemo-nav-bar">
                            <ul class="nav navbar-nav navbar-right" style="margin-top: 40px;">

                                <li><a href="#templatemo-service">MESSAGE</a></li>
                                <!--<li><a href="#templatemo-blog">BLOG</a></li>-->
                                <li><a rel="nofollow" href="#templatemo-portfolio" 
                                       class="external-link">GALERIE</a></li>
                                <li><a href="#templatemo-contact">COMMANDE</a></li>
                                <li><a href="#templatemo-profil">PROFIL</a></li>
                            </ul>
                        </div><!--/.nav-collapse -->
                    </div><!--/.container-fluid -->
                </div><!--/.navbar -->
            </div> <!-- /container -->
        </div>
        <div class="templatemo-welcome" id="templatemo-welcome">
            <div class="container">
                <div class="templatemo-slogan text-center">
                    <span class="txt_darkgrey"></span><span class="txt_orange">Bienvenue à Khadimou Rassoul Business Groupe</span>
                    <p class="txt_slogan"><i style="font-size: 25px">Etre aux services de la clientelle</i></p>
                </div>	
            </div>
        </div>

        <!--/////////////////////////////////////////////////////////////////Fin Banniere -->
        <!--/////////////////////////////////////////////////////////////////Carrousel
            Images défilant de gauche à droite-->

        <!--Fin Contact -->

        <!--Texte et Sitation de Cheikh Ahmadou Bamba -->

        <!--Fin Texte et Sitation de Cheikh Ahmadou Bamba -->        

        <!--Footer -->
        <div id="templatemo-service" class="templatemo-service">
            <div class="container">
                <div class="row">
                    <div class="templatemo-line-header" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="txt_darkgrey">MESSAGES</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                        <c:forEach var="mess" items="${listerMess}">
                            <div class="col-md-4">
                                <div class="templatemo-service-item">
                                    <div>
                                        <div class="form-inline">
                                            <img src="images/message.png" width="50px" alt="icon"/>
                                            <c:url var="delUrl" value="controleur">
                                                <c:param name="action" value="supprimer"/> 
                                                <c:param name="idmess" value="${mess.idMess}"/>
                                            </c:url>

                                            <a  href="javascript:confirmDelete('${delUrl}')"  title="supprimer" role="button"><img src="images/téléchargement.png" width="50px" alt="icon"/></a>
                                        </div>
                                        <span class="templatemo-service-item-header"></span><br/>${mess.nom}<br/>${mess.email}
                                    </div>
                                    <p>${mess.corpsMess}.</p>
                                </div>

                                <a class="btn_loadmore btn btn-lg btn-indigo" href="https://mail.google.com" role="button">Repondre</a>
                                <br class="clearfix"/>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <div id="templatemo-portfolio" class="templatemo-service">
            <div class="container">
                <div class="row">
                    <div class="templatemo-line-header" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="txt_darkgrey">GALERIE</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div></div>
            
                        <div class="col-lg-5" >
                            
                        <form method="POST" action="controleur" enctype="multipart/form-data">
            <input type="hidden" name="action" value="ajoutgl"/>                                                                                               
            <div class="form-group">
                
                                <label for="exampleFormControlSelect1">  Categorie:</label>


                                <select class="form-control" id="historique"  onchange="myFunction()" name="categorie" style="width: 200px">
                          <option value="Reseaux informatique">Reseaux informatique<br/></option>
                            <option value="Immobilier">Immobilier<br/></option>
                            <option value="Vente Materiel">Vente Materiel<br/></option>
                            <option value="Infographie">Infographie<br/></option>
                            <option value="Habillement">Habillement<br/></option>
                            
                             
   
                                </select></div>
    
                        <p id="demo" ></p>
          <script>
                            var codePats="\n\
                        <label for='image'>Prix:</label><br> \n\
                <div class='form-group'>        \n\
       <input type='text' class='form-control' placeholder='prix' maxlength='40' style='width: 200px' name='prix'/>\n\
        </div> \n\
<label for='image'>Propriété:</label><br>\n\
        <div class='form-group'>\n\
        <textarea  class='form-control' style='width: 200px' name='propriété' ></textarea>\n\
            </div>     \n\
       ";  </script>
                                    
                               

                <!--Images --><div class="form-group">
                <label for="image">Photos</label><br>
                <input id='image' type='file' name='photo' class='form-control' style="width: 200px">                            
                </div><div class="form-group">
                    <button type="submit" class="btn btn-info col-lg-12">Valider</button>
                </div>
        </form>
                            <div class="clearfix"></div>
                    <div class="templatemo-gallery-category" style="font-size:16px; margin-top:80px;">
                        <div class="text-center">
                            <a class="active" href=".gallery">Tout</a> / <a href=".gallery-design">Reseaux Informatique</a>/ <a href=".gallery-graphic">Immobilier</a> / <a href=".gallery-inspiration">Materiels en vente</a> / <a href=".gallery-creative">Infographie</a>/  <a href=".gallery-habillement">Habillement</a>							
                        </div>
                    </div>
                </div>
                </div><!-- /.row -->

                
                <div class="clearfix"></div>
                <div class="text-center">
                    <ul class="templatemo-project-gallery" >
                    <c:forEach var="mess" items="${listerGalerieIm}">
                    
                        <li class="col-lg-2 col-md-2 col-sm-2  gallery gallery-graphic" >
                            <a class="colorbox" href="photo/${mess.nomGalerie}" data-group="gallery-graphic">
                                <div class="templatemo-project-box">

                                    <img src="photo/${mess.nomGalerie}" class="img-responsive" alt="gallery" />
                                    
                                    <div class="project-overlay">
                                        <h5>${mess.categorie}</h5>
                                        <hr />
                                        <h4>Khadimou Rassoul Business Groupe</h4>
                                    </div>
                                </div>
                         </a>
                                       
                          <a class="btn_loadmore btn btn-lg btn-indigo" href="controleur?action=supprimerIm&idim=${mess.idGalerie}"role="button">Supprimer</a>
  
                        </li>
                        
                    </c:forEach>
                    <c:forEach var="mess" items="${listerGalerieInf}">
                        <li class="col-lg-2 col-md-2 col-sm-2  gallery gallery-creative" >
                            <a class="colorbox" href="photo/${mess.nomGalerie}" data-group="gallery-creative">
                                <div class="templatemo-project-box">
                                    <img src="photo/${mess.nomGalerie}" class="img-responsive" alt="gallery" />
                                    <div class="project-overlay">
                                        <h5>${mess.categorie}</h5>
                                        <hr />
                                        <h4>Khadimou Rassoul Business Groupe</h4>
                                    </div>
                                </div>
                            </a>
                          <a class="btn_loadmore btn btn-lg btn-indigo" href="controleur?action=supprimerInf&idinf=${mess.idGalerie}"role="button">Supprimer</a>
                                        
                        </li>
                    </c:forEach>
                        <c:forEach var="mess" items="${listerGalerieMat}">
                        <li class="col-lg-2 col-md-2 col-sm-2  gallery gallery-inspiration" >
                            <a class="colorbox" href="photo/${mess.nomGalerie}" data-group="gallery-inspiration">
                                <div class="templatemo-project-box">
                                    <img src="photo/${mess.nomGalerie}" class="img-responsive" alt="gallery" />
                                    <div class="project-overlay">
                                        <h4>Prix: ${mess.prix}</h4>
                                        <hr />
                                        <h6>Propriété: ${mess.propriété}</h6>
                                    </div>
                                </div>
                            <a class="btn_loadmore btn btn-lg btn-indigo" href="controleur?action=supprimerMat&idmat=${mess.idGalerie}"role="button">Supprimer</a>
                            </a>
                        </li>
                        </c:forEach>
                        <c:forEach var="mess" items="${listerGalerieRes}">
                        <li class="col-lg-2 col-md-2 col-sm-2  gallery gallery-design" >
                            <a class="colorbox" href="photo/${mess.nomGalerie}" data-group="gallery-design">
                                <div class="templatemo-project-box">
                                    <img src="photo/${mess.nomGalerie}" class="img-responsive" alt="gallery" />
                                    <div class="project-overlay">
                                        <h5>${mess.categorie}</h5>
                                        <hr />
                                        <h4>Khadimou Rassoul Business Groupe</h4>
                                    </div>
                                </div>
                            </a>
                            <a class="btn_loadmore btn btn-lg btn-indigo" href="controleur?action=supprimerRes&idres=${mess.idGalerie}"role="button">Supprimer</a>

                        </li>
                        </c:forEach>

                         <c:forEach var="mess" items="${listerGalerieHab}">
                        <li class="col-lg-2 col-md-2 col-sm-2  gallery gallery-habillement" >
                            <a class="colorbox" href="photo/${mess.nomGalerie}" data-group="gallery-habillement">
                                <div class="templatemo-project-box">
                                    <img src="photo/${mess.nomGalerie}" class="img-responsive" alt="gallery" />
                                    <div class="project-overlay">
                                        <h5>${mess.categorie}</h5>
                                        <hr />
                                        <h4>Khadimou Rassoul Business Groupe</h4>
                                    </div>
                                </div>
                            </a>
                    <a class="btn_loadmore btn btn-lg btn-indigo" href="controleur?action=supprimerHab&idhab=${mess.idGalerie}"role="button">Supprimer</a>

                        </li>
                    </c:forEach>
                       

                    </ul><!-- /.gallery -->
                </div>
                <div class="clearfix"></div>

                        
</div><div id="templatemo-contact" class="templatemo-service">
     <c:forEach var="mess" items="${listerCommande}">
            <div class="container">
                <div class="row">
                    <div class="templatemo-line-header" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="txt_darkgrey">COMMANDES</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                       
                     <a class="btn_loadmore btn btn-lg btn-indigo" style="float: right;position: relative" href="https://mail.google.com" role="button">Repondre</a>

                            <a class="colorbox" href="photo/${mess.nomGalerie}" data-group="gallery-design">
                                <div class="templatemo-project-box">
                                    <img src="photo/${mess.nomGalerie}" class="img-responsive" alt="gallery" />
                                   
                                    <div class="project-overlay">
                                        <h5>Prix:${mess.prix}</h5>
                                        <hr />
                                        <h6>${mess.propriete}</h6>
                                        
                                    </div>

                                </div>
                                    
                                            <c:url var="delUrl" value="controleur">
                                                <c:param name="action" value="supprimerco"/> 
                                                <c:param name="idco" value="${mess.idCommande}"/>
                                            </c:url>

                                        <a  href="javascript:confirmDelete('${delUrl}')"  title="supprimer" role="button"><img src="images/téléchargement.png" style="float: right;position: relative"  width="50px" alt="icon"/></a>

                            </a>


                            <div class="col-md-4">
                                <div class="templatemo-service-item">
                                    
                                        
                                        <br/>${mess.prenom} ${mess.nom}<br/>${mess.adresse}<br/>${mess.telephone}<br/>${mess.email}
                                    </div>
                                    <p>${mess.dateCommande}.</p>
                                </div>
                                 <a  style="float: right;position: relative" href="controleur?action=imp&idc=${mess.idCommande}&prn=${mess.prenom}&nm=${mess.nom}&adr=${mess.adresse}&tel=${mess.telephone}&em=${mess.email}&prix=${mess.prix}&pro=${mess.propriete}&date=${mess.dateCommande}" title="Imprimer une Facture"role="button"><img src="images/Capturei.PNG" width="100px"/></a>

                            
                         
                       
                    </div>
                </div>
            </div>
           </c:forEach>
        </div>
        <div id="templatemo-profil" class="templatemo-service">
            <div class="container">
                <div class="row">
                <div class="templatemo-line-header" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="txt_darkgrey">Profil</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                        
                       <div class=" col-lg-10" >
                        
                           
                        <form name="formule" class="form-horizontal" action="controleur" methode="POST">
                            <input type="hidden" name="action" value="prof"/>
                            <input type="hidden" name="idgl" value="${idgl}"/>
                            
                            
                                

                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">Login:</label>
                                <div class="col-sm-10">
                                    <input type="hidden" name="idus" value="${us.idUser}"/> 
                                    <input type="text" class="form-control" id="inputPassword3" placeholder="Login" style="width: 200px" name="login" value="${us.login}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">Password:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputPassword3" placeholder="Password" style="width: 200px" name="password" value="${us.password}">
                                </div>
                            </div>
                    <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default" style="background-color: blue;color: white;width: 200px" >Changer</button>
                            </div>
                        </div>
                                    <p  style="color: green;font-size: 20px">
                                        ${message}
                                    </p>
                        </form>
      <a  style="float: right;position: relative"class="btn_loadmore btn btn-lg btn-indigo" href="controleur?action=deconnexion" title="Deconnxion"role="button">Deconnexion</a>
                 
                    </div>
                       
                    </div>
                </div>
            </div>
           
        </div>
    

        <div class="templatemo-footer" >
            <div class="container">
                <div class="row">
                    <div class="text-center">

                        <div class="footer_container">
                            <ul class="list-inline">
                                <li>
                                    <a href="#">
                                        <span class="social-icon-fb"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="social-icon-rss"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="social-icon-twitter"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="social-icon-linkedin"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="social-icon-dribbble"></span>
                                    </a>
                                </li>
                            </ul>
                            <div class="height30"></div>
                            <a class="btn btn-lg btn-indigo" href="#" role="button" id="btn-back-to-top">Retourner En Haut</a>
                            <div class="height30"></div>
                        </div>
                        <div class="footer_bottom_content">
                            <span id="footer-line">Copyright © <a href="#">Serigne Mor Ba</a></span>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!--Fin Footer -->
        <script language= "JavaScript">
            function confirmDelete(delUrl)
            {
                if (confirm("voulez vous supprimer?"))
                {
                    document.location = delUrl;
                }
            }
        </script>
        
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js"  type="text/javascript"></script>
        <script src="js/stickUp.min.js"  type="text/javascript"></script>
        <script src="js/colorbox/jquery.colorbox-min.js"  type="text/javascript"></script>
        <script src="js/templatemo_script.js"  type="text/javascript"></script>
        <!-- templatemo 395 urbanic -->
    </body>
</html>
