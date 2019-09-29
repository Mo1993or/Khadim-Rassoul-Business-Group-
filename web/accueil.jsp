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
        <title>KRBG</title>
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
        <link rel="stylesheet" type="text/css" href="style.css">
        <!-- Custom styles for this template -->
        <link href="js/colorbox/colorbox.css"  rel='stylesheet' type='text/css'>
        <link href="css/templatemo_style.css"  rel='stylesheet' type='text/css'>

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
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
                                <a href="#" class="navbar-brand"><img src="images/krbg.jpg" style="width: 200px;height: 70px" alt="Urbanic Template" title="Urbanic Template" /></a>
                        </div>
                        <div class="navbar-collapse collapse" id="templatemo-nav-bar">
                            <ul class="nav navbar-nav navbar-right" style="margin-top: 40px;">
                                <li class="active"><a href="#templatemo-top">ACCUEIL</a></li>
                                <li><a href="#templatemo-service">SERVICES</a></li>
                                <li><a href="#templatemo-portfolio">GALERIE</a></li>
                                <!--<li><a href="#templatemo-blog">BLOG</a></li>-->
                                <li><a rel="nofollow" href="controleur?action=connexion&con=conn" 
                                		class="external-link">CONNEXION</a></li>
                                <li><a href="#templatemo-contact">CONTACT</a></li>
                            </ul>
                        </div><!--/.nav-collapse -->
                    </div><!--/.container-fluid -->
                </div><!--/.navbar -->
            </div> <!-- /container -->
        </div>

        <!--/////////////////////////////////////////////////////////////////Fin Banniere -->
        <!--/////////////////////////////////////////////////////////////////Carrousel
            Images défilant de gauche à droite-->
        <div class="slider">
           <div class="slides">
               <div class="slide">
                   <img src="images/ii.jpg" alt="slide1" width="100%"/></div>
                <div class="slide">
                   <img src="images/imb1.jpg" alt="slide2" width="100%"/></div>
                <div class="slide">
                    <img src="images/fkg.jpg" alt="slide3" width="100%"/></div></div></div>
        <!--/////////////////////////////////////////////////////////////////Fin Carousel -->

        <!--Message de BienVenue -->
        <div class="templatemo-welcome" id="templatemo-welcome">
            <div class="container">
                <div class="templatemo-slogan text-center">
                    <span class="txt_darkgrey"></span><span class="txt_orange">Bienvenue à Khadimouou Rassoul Business Groupe</span>
                    <p class="txt_slogan"><i style="font-size: 25px">Etre aux services de la clientelle</i></p>
                </div>	
            </div>
        </div>
        <!--Fin Message de BienVenue -->
        
        <!--Fin Accueil -->
        <!--/////////////////////////////////////////////////////////////////////////////////-->
        <!--Commissions -->
        <div id="templatemo-service" class="templatemo-service">
            <div class="container">
                <div class="row">
                    <div class="templatemo-line-header" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="txt_darkgrey">NOS SERVICES</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="templatemo-service-item">
                            <div>
                                <img src="images/iii.jpg" alt="icon" width="100px"/>                                <span class="templatemo-service-item-header">Informatique</span>

                            </div>
                            <p>Cette service est mis en place pour gerer tout ce qui est reparation de machine, maintenance informatique, bureautique ainsi que tout ce qui est installation machine etc...</p>
                           
                            <br class="clearfix"/>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="templatemo-service-item">
                            <div>
                                <img src="images/d56.jpg" alt="icon" width="70px"/>
                                <span class="templatemo-service-item-header">Immobilier</span>
                            </div>
                            <p>il gére tout ce qui est vente de terrain,location appartement ,terrassement,lotissement gérance</p>
                            
                            <br class="clearfix"/>
                        </div>
                        
                    </div>
                    
                    <div class="col-md-4">
                        <div class="templatemo-service-item">
                            <div>
                                <img src="images/imb1.jpg" alt="icon" width="100px"/>
                                <span class="templatemo-service-item-header">Vente matériels</span>
                            </div>
                            <p>Il gere gére tout ce qui vente et achats des materiels que sa informatique , immobilier, ou habillement.</p>
                           
                            <br class="clearfix"/>
                        </div>
                        <br class="clearfix"/>
                    </div>
			<div class="col-md-4">
                        <div class="templatemo-service-item">
                            <div>
                                <img src="images/bonheur.jpg" alt="icon" width="100px"/>
                                <span class="templatemo-service-item-header">Infographie</span>
                            </div>
                            <p>cette service a comme but de gerer tout ce qui est infographie à savoir la creation de logo,affiche,flyers,Depliant,Calandrier,carte de visite, flocage sur T-shir casquette,maillot, montage,cadrage,Impression sur Bache ,banderole,ect....</p>
                            
                            <br class="clearfix"/>
                        </div>
                        <br class="clearfix"/>
                    </div>
                    <div class="col-md-4">
                        <div class="templatemo-service-item">
                            <div>
                                <img src="images/battery.png" alt="icon"/>
                                <span class="templatemo-service-item-header">Habillement</span>
                            </div>
                            <p>Il s'occupe de tout ce qui est port vestmentaire à savoir les T-shirt,chemise, chaussure,pantalon, à préciser aussi y'en a pour toute generation enfant,adulte,troisieme age ,femme,homme etc..</p>
                            
                            <br class="clearfix"/>
                        </div>
                        <br class="clearfix"/>
                    </div>
                </div>
            </div>
        </div>
        <!--Fin Service -->

         <!--Gallerie -->
        <div id="templatemo-portfolio" >
            <div class="container">
                <div class="row">
                    <div class="templatemo-line-header" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="txt_darkgrey">GALERIE</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="templatemo-gallery-category" style="font-size:16px; margin-top:80px;">
                        <div class="text-center">
                            <a class="active" href=".gallery">TOUT</a> / <a href=".gallery-design">Reseaux Informatique</a>/ <a href=".gallery-graphic">Immobilier</a> / <a href=".gallery-inspiration">Materiels en vente</a> / <a href=".gallery-creative">Infographie</a> / <a href=".gallery-habillement">Habillement</a>							
                        </div>
                    </div>
                </div> <!-- /.row -->

                
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
                                        <h4>Khadimouou Rassoul Business Groupe</h4>
                                    </div>
                                </div>

                            </a>
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
                                        <h4>Khadimouou Rassoul Business Groupe</h4>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
                       
                        <c:forEach var="mess" items="${listerGalerieMat}">
                        <li class="col-lg-2 col-md-2 col-sm-2  gallery gallery-inspiration" >
                            <a class="colorbox" href="photo/${mess.nomGalerie}" data-group="gallery-inspiration">
                                <div class="templatemo-project-box">
                                    <img src="photo/${mess.nomGalerie}" class="img-responsive" alt="gallery" />
                                    <div class="project-overlay">
                                        <h4>${mess.prix}</h4>
                                        <hr />
                                       
                                        <h6>Propriété: ${mess.propriété}</h6>
                                     
                                    </div>
                                </div>
                            </a>
           <a class="btn_loadmore btn btn-lg btn-indigo" href="controleur?action=achat&idg=${mess.idGalerie}"role="button">Acheter</a>

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
                                        <h4>Khadimouou Rassoul Business Groupe</h4>
                                    </div>
                                </div>
                            </a>
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
                                        <h4>Khadimouou Rassoul Business Groupe</h4>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
                        
                       

                    </ul><!-- /.gallery -->
                </div>
                <div class="clearfix"></div>
               
            </div><!-- /.container -->
        </div> <!-- /.templatemo-portfolio -->
        <!--Fin Gallerie -->

        <!--Contact -->
        <div id="templatemo-contact">
            <div class="container">
                <div class="row">
                    <div class="templatemo-line-header head_contact">
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="txt_darkgrey">CONTACTEZ NOUS</span>
                            <hr class="team_hr team_hr_right hr_gray"/>
                        </div>
                    </div>

                    <div class="col-md-8">
                        <div class="templatemo-contact-map" id="map-canvas"> </div>  
                        <div class="clearfix"></div>
                       
                    </div>
                    <div class="col-md-4 contact_right">
                        <p>Pour plus d'information vous pouvez visuliser les informations suivante:</p>
                        <p><img src="images/location.png" alt="icon 1" /> Dakar Keur massar cité gendarmerie"</p>
                        <p><img src="images/phone1.png"  alt="icon 2" /> 77-320-05-61 / 76-564-62-34</p>
                        <p><img src="images/globe.png" alt="icon 3" /><a class="link_orange" href="#"><span class="txt_orange">www.KhadimououRassoulBusnessGroup.com</span></a></p>
                        <form class="form-horizontal" action="controleur" method="POST">
                            <input type="hidden" class="form-control" name="action" value="envoyer" />
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Votre Nom..." maxlength="40" name="nom" />
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" placeholder="Votre Email..." maxlength="40" name="email"/>
                            </div>
                            <div class="form-group">
                                <textarea  class="form-control" style="height: 130px;" name="message" placeholder="Ecrivez ici votre message..."></textarea>
                            </div>
                            <button type="submit" class="btn btn-indigo pull-right">Envoyer</button>
                        </form>
                        	
                    </div>
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /#templatemo-contact -->
        <!--Fin Contact -->

        <!--Texte et Sitation de Cheikh Ahmadou Bamba -->
        
        <!--Fin Texte et Sitation de Cheikh Ahmadou Bamba -->        

        <!--Footer -->
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

        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js"  type="text/javascript"></script>
        <script src="js/stickUp.min.js"  type="text/javascript"></script>
        <script src="js/colorbox/jquery.colorbox-min.js"  type="text/javascript"></script>
        <script src="js/templatemo_script.js"  type="text/javascript"></script>
		<!-- templatemo 395 urbanic -->
                
                 <c:if test="${!empty conn || !empty testt}">
        <link rel="stylesheet" type="text/css" href="style.css">
<div class="loginBox">
    <div class="hov" >   <a class="nav-item nav-link " href="controleur?action=qit" style="padding: 1px;float: right" title="Quitter"><img src='images/del.png' width='15' /> </a></div>

    <center>  <img src="images/connect.png" style="width: 70px"/></center>
    <h2>Connectez-vous</h2>
    <form method="POST" action="controleur">
        <input type="hidden" name="action" value="connecter">
        <input type="hidden" name="testt" value="tst">
         
        <c:if test="${!empty testt}">
            <p class="erreur">
                <c:out value="${alerte}"/>
            </p>
        </c:if>

        <p>Login</p>
        <input type="text" name="login" placeholder="Votre Email" data-toggle="tooltip" data-placement="left"
               title="Saisissez votre adresse Email ici">
        <c:if test="${!empty cdsc1.resultatEmail}">
            <p class="erreur">
                <c:out value="${cdsc1.resultatEmail}"/>
            </p>
        </c:if>
        <p>Mot de passe</p>
        <input type="password" name="password" placeholder="Votre mot de passe" data-toggle="tooltip" data-placement="right"
               title="Saisissez votre mot de passe ici"><br>
        <c:if test="${!empty cdsc2.resultatPassword}">
            <p class="erreur">
                <c:out value="${cdsc2.resultatPassword}"/>
            </p>
        </c:if>
        <input type="submit" value="Se connecter"><br>
        <a href="#">Mot de passe oublier?</a>
    </form>
</div></c:if>
    </body>
</html>
