
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
    <link href="css/card.css" rel="stylesheet">
      
    <?php include('conn.php');
     
        if (isset($_GET['id'])){
    $id = $_GET['id'];
    $nro_reg=$_GET['id'];      
    $sql = "select * from product as p where p.productid = \"$id\"";
    $result = mysqli_query($conn, $sql);
                                }

        if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){
        $id = $row['productid'];
        $product_name = $row['product_name'];
        $price = $row['product_price'];  
        $photo = $row['photo'];
        $category_name = $row['category_name'];
    }
        } else {
    echo "Lo sentimos no existe detalle de este producto por el momento";
        }
      
     $query=mysqli_query($conn,"select * from product where categoryid = \"$id\" order by product_name");  
    $nro_reg=mysqli_num_rows($query); 

    
      
    $reg_por_pagina=8; 
      
    @$nro_pagina=$_GET['num']; 
    
    if(is_numeric($nro_pagina))
        $inicio=($nro_pagina-1)*$reg_por_pagina;
        else 
        $inicio=0;
      
      
       $query=mysqli_query($conn,"select * from product where categoryid = \"$id\" order by product_name limit $inicio,$reg_por_pagina");  
      
      $can_paginas=ceil($nro_reg / $reg_por_pagina);
      ?>
        
      
  </head>

  <body>

    <!-- Navigation -->
    <?php include './inc/nav.php';?>  
    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
    
    
    <div style="height: 50px;"></div>

     <h1 class="mt-4 mb-3">Clarke  
        <small>Equipment</small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a style="color: #000;" href="index.php">Home</a></li>
        <li class="breadcrumb-item"><a style="color: #000;" href="equipment_seccion.php"><? echo $category_name; ?></a></li>
      
      </ol>
    
    <div class="flex-container">
      
      <?php

        while($row=mysqli_fetch_array($query)){
            
         $id=$row['productid'];
         $name=$row['product_name'];
         $photo=$row['photo'];
         $price=$row['product_price'];

      ?>

      <div class="ih-item square colored effect4 top_to_bottom">
            <a id="enviar">
              
              <div class="img_clarke">
                <img src="POS/<?php if (empty($photo)){echo "upload/noimage.jpg";}else{echo $photo;} ?>" alt="img">
              </div>
              
                 <div class="info">  
                <h3>
                  <?php echo $name; ?></h3>
                <h4>$ <?php echo 'Coming soon' ?>
                  
                </h4>
                   <form action="details.php" method="post" name="Detalle">
                    <input name="id_txt" type="hidden" value="<?php echo $id; ?>" />
                    <input name="Detalles" type="submit" value="Detalles" class="btn btn-info" />
                  </form>
              </div>
            </a>
      </div>
      <?php

      }
      ?>

    </div>
    
	<div style="height: 50px;"></div>
	
      <!-- Pagination -->
      <div align="center">
      <?php
       if($nro_pagina>1){
          echo "<a href='prueba.php?num=".($nro_pagina-1)."'> Anterior ></a> ";
       }
       for ($i=1; $i<=$can_paginas; $i++)
       {
          if ($i==$nro_pagina){
               echo $i." ";
             }
           else{ 
               echo "<a href='prueba.php?num=$i'>$i</a> ";
           }
       } 
       if($nro_pagina<$can_paginas){
           echo "<a href='prueba.php?num=".($nro_pagina+1)."'> Siguiente ></a> "; 
       }
       ?>
      </div>
      <!--End Pagination -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
     <?php include './inc/footer.php'; ?>  

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  </body>

</html>