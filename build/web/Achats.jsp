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
        <title>Khadimou Rassoul Busness Group</title>
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
                                    
                                 <li><a href="controleur?action=accueil">ACCUEIL</a></li>
                                <li><a href="#templatemo-service">FORMULAIRE</a></li>
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
       <div id="templatemo-service" class="templatemo-service">
            <div class="container">
                <div class="row">
                    <div class="templatemo-line-header" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="txt_darkgrey">Formulaire Clients</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                         <p  style="color: red;background-color: gray;font-size: 20px">
                                        Attention! Votre commande ne sera livré que sur la région de dakar sur ceux nous <br/>vous enverrons les informations relative aux payement et la livraison sous 24h.<br/>Merci!
                                    </p><br/>
                       <div class=" col-lg-10" >
                        
                           
                        <form name="formule" class="form-horizontal" action="controleur" methode="POST">
                            <input type="hidden" name="action" value="valachat"/>
                            <input type="hidden" name="idgl" value="${idgl}"/>
                            
                            
                                

                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">Prenom:</label>
                                <div class="col-sm-10">
                                    <input type="hidden" name="idpat" value="${u3.noUser}"/> 
                                    <input type="text" class="form-control" id="inputPassword3" placeholder="Prenom" style="width: 200px" name="prenom" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">Nom:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputPassword3" placeholder="Nom" style="width: 200px" name="nom" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">Adresse:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputPassword3" placeholder="Adresse" style="width: 200px" name="adresse" required>
                                </div>
                            </div>
                                    <div class="form-inline">
                            <div class="form-group">
                                <label for="inputPassword3" style="margin: 20px;" class="col-sm-2 control-label">Telephone:</label>
                                </div>
                                    
                                
                                <div class="form-group" >
                                    <select  name="telephone1" style="margin: 20px;height: 40px">
                                        <option value="77">77<br/></option>
                                        <option value="78">78<br/></option>
                                        <option value="76">76<br/></option>
                                        <option value="70">70<br/></option>
                                        <option value="33">33<br/></option>
                                        <option value="33">30<br/></option>
                                    </select></div>
                                    <input type="text"  placeholder="Telephone" name="telephone2" style="height: 40px;width: 200px"  required onkeypress='return event.charCode >= 48 && event.charCode <= 57' maxlength="7">
                                </div>
                                    <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">E-mail:</label>
                                <div class="col-sm-10">
                                    <input type="email" class="form-control" id="inputPassword3" placeholder="Email" style="width: 200px" name="email" required>
                                </div>
                            </div>
                                     <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default" style="background-color: blue;color: white;width: 200px" >Valider</button>
                            </div>
                        </div>
                                    <p  style="color: green;font-size: 20px">
                                        ${message}
                                    </p>
                        </form>
                                    
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
             </body>
</html>
