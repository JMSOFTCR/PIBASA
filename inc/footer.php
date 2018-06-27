<?php 
	include('modal-login.php');
	include('modal.php');
?>   

<style>
    h4, p {
  font-family: Georgia, Cambria, Times, "Times New Roman";
}
    h4, h6{color:aliceblue}
</style>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <section class="index-link">
    <div style="height: 15px;"></div>
        <div class="container">
        <div class="row">
            <div class="col-md-3 col-xs-12 ">
                 <div style="height: 20px;"></div>
                <div class="link-area">
                      <h4 class="text-uppercase">
                        <strong>NOSOTROS</strong>
                      </h4>
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 70px;">
                    <P style="color: white">Somos la empresa número 1 en pisos cerámicos y loza sanitaria en Guanacaste</P>
                    <a href="https://www.facebook.com/PISOSDELABAJURA/"><i class="fa fa-facebook" style="font-size:50px; color:#0a00ff;"></i></a>
                    <a href="#"><i class="fa fa-twitter" style="font-size:50px; color:#08e3ff; text-indent: 8px;"></i></a>
                    <a href="#"><i class="fa fa-linkedin" style="font-size:50px; color:#ededed;text-indent: 8px;"></i></a>
                    <a href="#"><i class="fa fa-whatsapp" style="font-size:50px; color:#00eb2d; text-indent: 8px;"></i></a>
                </div>
            </div>
                    
                <div class="col-lg-3">
                    <div style="height: 20px;"></div>
                <div class="link-area">
                      <h4 class="text-uppercase">
                        <strong>PÁGINA RÁPIDA</strong>
                      </h4>
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 85px;">
                   
                   <a class="col-xs-12 col-lg-12 alinear btn btn-success btn-sm" href="index.php">INICIO</a>
                    

                  <div class="col-xs-12">
  <button class="alinear btn btn-success btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Productos
  </button>
  <div class="dropdown-menu">
  
               <a class="dropdown-item" href="equipment_seccion.php">Vidrio Block</a>
                <a class="dropdown-item" href="">Imagenes y Murales</a>
                <a class="dropdown-item" href="Floor_seccion.php">Pisos y Enchapes Españoles</a>
                <a class="dropdown-item" href="batteries.php">AlttoGlass</a>
                <a class="dropdown-item" href="parts_and_accessories.php">Revestimiento</a>
                <a class="dropdown-item" href="green_cleaning.php" >Liquidación</a>
                <a class="dropdown-item" href="green_cleaning.php" >Morteros</a>
     
             
  </div>
</div>
                    <a class="btn btn-success btn-sm alinear col-xs-12" href="contact.php">Contactenos</a>
                   <a class="btn btn-success btn-sm alinear col-xs-12" href="about.php">Nosotros</a>          
                </div>
            </div>

            <div class="col-md-3 col-xs-12">
                <div style="height: 20px;"></div>
                <div class="link-area">
                        <h4 class="text-uppercase">
                        <strong>Mi cuenta</strong>
                      </h4>
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 95px;">
                    <ul>
                     <?php
                          if(!$_SESSION['id']==""){
                                echo ' 
                                    
                                     <!-- Example split danger button -->
                               
                                     <a class="dropdown-item" href="#account" data-toggle="modal" style="color:white"><img src="svg/si-glyph-flower.svg"/ style="width:24px; height:24px;"> Mi Cuenta</a>
                                     <a class="dropdown-item" href="#profile" data-toggle="modal" style="color:white"><img src="svg/si-glyph-man-doctor.svg"/ style="width:24px; height:24px;"> My Profile</a>
                                      <li id="cartme" style="cursor:pointer">
                                            <a class="nav-item nav-link" id="cart_control" title="Shopping Cart" data-toggle="popover" style="color:white"><img src="svg/si-glyph-trolley-2.svg"/ style="width:24px; height:24px;"> My Shopping Cart</a>
                                            </li>
                                  
                                 ';
                            }else{
                                echo ' 
                                       
                                             <a class="dropdown-item" href="#myModal" data-toggle="modal" style="color:white"><img src="svg/si-glyph-flower.svg"/ style="width:24px; height:24px;"> Mi Cuenta</a>
                                             <a class="dropdown-item" href="#myModal" data-toggle="modal" style="color:white"><img src="svg/si-glyph-man-doctor.svg"/ style="width:24px; height:24px;"> Mi Perfil</a>
                                            
                                            <a class="nav-item nav-link" id="cart_control" title="Shopping Cart" data-toggle="popover" style="color:white"><img src="svg/si-glyph-trolley-2.svg"/ style="width:24px; height:24px;"> My Shopping Cart</a>
                                          
                                 
                                 ';
                            }
                        ?>   
             
                    </ul>
                </div>
            </div>
            <div class="col-md-3 col-xs-12">
                <div style="height: 20px;"></div>
                <div class="link-area">
                        <h4 class="text-uppercase">
                        <strong>Contactenos</strong>
                        </h4>
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 90px;">
                    <ul>
                    <li><p style="color:white"><i class="fa fa-envelope-o text-white"></i> : pisosdelabajurasa@gmail.com</p></li>
                    <li><p style="color:white"><i class="fa fa-address-book-o text-white"></i> : 2686-7363</p></li>
                    <li><p style="color:white"><i class="fa fa-phone text-white"></i> : 85610288</p></li>
                    <li><p style="color:white"><i class="fa fa-compass text-white"></i> : Dirección Principal: 100 mts noroeste y 150 norte del nuevo BCR </p></li>
                    <li><p style="color:white"><i class="fa fa-compass text-white"></i> : Frente al campo ferrial, <br> Nicoya,  Guanacaste </p></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="index-social">
    <div class="container">
    <div class="row index-social-link text-center">
            <p class="copy-c"><p>&copy; 2018 PISOS DE LA BAJURA S.A.</p>
        </div>
        </div>
</section>