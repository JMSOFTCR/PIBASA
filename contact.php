<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
      
      <link href="vendor/bootstrap/css/footer.css" rel="stylesheet">
    <title>FCHMAINTENANCE</title>
    <?php include './inc/link.php'; ?>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

  </head>

  <body>
   
    <!-- Navigation -->
      <?php include './inc/nav.php'; ?>  
    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3 active animated shake">Contact
        <small></small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item" >Contact</li>
      </ol>

      <!-- Content Row -->
      <div class="row">
        <!-- Map Column -->
        <div class="col-lg-8 mb-4 animated fadeInDown">
          <!-- Embedded Google Map -->
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1963.7141966203646!2d-85.45876993156949!3d10.145790046521642!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xdffab4e9f5600526!2sPisos+La+Bajura+Nicoya!5e0!3m2!1ses!2scr!4v1530070822945" width="750" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
        <!-- Contact Details Column -->
        <div class="col-lg-4 mb-4">
          <h3 class="animated bounce">Contact Details</h3>
            <h5>General Mailing Address:</h5>
          <p>
             Dirección Principal: 100 mts noroeste <br> y 150 norte del nuevo BCR
          </p>
          <p>
            <abbr title="Phone">Teléfono</abbr>: 
              <br> 2686-7363
               <br>
            <abbr title="Phone"></abbr> 2686-7576
               <br>
            <abbr title="Phone"></abbr> 8561-0288
              <br>
           
          </p>
          <p>
            <abbr title="Email">Email</abbr>:
            <a style="color:green" href="mailto:fchmaintenance@gmail.com">pisosdelabajurasa@gmail.com
            </a>
          </p>
          <p>
            <abbr title="Hours">Horario</abbr>: Lunes - Viernes: 7:30 AM a 12:00 PM y 1:30 a 5:30 PM
              <br>
            <abbr title="Hours">Horario</abbr>: Sábados : 7:30 AM to 12:00 PM
          </p>
        </div>
      </div>
      <!-- /.row -->

      <!-- Contact Form -->
      <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
      <div class="row scrollflow -slide-right -opacity">
        <div class="col-lg-8 mb-4">
          <h3>Envíanos un Mensaje</h3>
          <form name="sentMessage" id="contactForm" novalidate>
            <div class="control-group form-group">
              <div class="controls">
                <label>Nombre Completo:</label>
                <input type="text" class="form-control" id="name" required data-validation-required-message="Please enter your name.">
                <p class="help-block"></p>
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Número de Teléfono:</label>
                <input type="tel" class="form-control" id="phone" required data-validation-required-message="Please enter your phone number.">
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Email:</label>
                <input type="email" class="form-control" id="email" required data-validation-required-message="Please enter your email address.">
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Mensaje:</label>
                <textarea rows="10" cols="100" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
              </div>
            </div>
            <div id="success"></div>
            <!-- For success/fail messages -->
            <button type="submit" class="btn btn-primary animated infinite pulse">Envíar Mensaje</button>
          </form>
        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
      <?php include './inc/footer.php'; ?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Contact form JavaScript -->
    <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

  </body>

</html>
