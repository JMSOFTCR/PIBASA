<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
      
      <link href="vendor/bootstrap/css/footer.css" rel="stylesheet">
    <title>FCHMAINTENANCE</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="css/card.css" rel="stylesheet">
  </head>

  <body>

    <!-- Navigation -->
    <?php include './inc/nav.php';
    include('conn.php');
       $query=mysqli_query($conn,"select * from product where categoryid = 3 order by product_name");  
    $nro_reg=mysqli_num_rows($query); 
    $Total = $nro_reg;

    
      
    $reg_por_pagina=9; 
      
    @$nro_pagina=$_GET['num']; 
    
    if(is_numeric($nro_pagina))
        $inicio=($nro_pagina-1)*$reg_por_pagina;
        else 
        $inicio=0;
      
      
       $query=mysqli_query($conn,"select * from product where categoryid = 3 order by product_name limit $inicio,$reg_por_pagina");  
      
      $can_paginas=ceil($nro_reg / $reg_por_pagina);
    ?>  
    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
    
<div class="container">
<div style="height: 30px;"></div>
     <h1 class="mt-4 mb-3">Morteros
        <small></small>
      </h1>
      
        <div class="col-lg-12">
                <img src="img/Bannerp/ceramica2.jpg" style="width: 100%;">
            </div>

        <div style="height: 50px;"></div>

      <ol class="breadcrumb">
      <li class="breadcrumb-item">
          <a style="color:black" href="index.php">Home</a>
        </li>
        <li class="breadcrumb-item active">Morteros</li>
        <li class="breadcrumb-item active"></li>
      </ol>

<!--      <a style="color: gray">Disponemos de <?php echo $Total  ?> productos</a>-->
	<div style="height: 30px;"></div>
	<div> 
        
	<?php
		$inc=4;
		
		while($row=mysqli_fetch_array($query)){
            
         $id=$row['productid'];
         $name=$row['product_name'];
         $photo=$row['photo'];
			
			
			?>
                   
				 <div class="d-inline-flex p-4">
                   
            
 
 
    <!-- colored -->
    <div class="ih-item square colored effect4" style="width:100%; height:270px;"><a id="enviar">
        <div class="img"><img style="width:275px; height:270px;" src="POS/<?php if (empty($photo)){echo "upload/noimage.jpg";}else{echo $photo;} ?>" alt="img"></div>
        <div class="mask1"></div>
        <div class="mask2"></div>
        <div class="info">  
          <h3><?php echo $name; ?></h3>
          <h4>$ <?php echo $price; ?></h4>
             <form action="details.php?id=<?php echo $id; ?>" method="post" name="Detalle"><input name="id_txt" type="hidden" value="<?php echo $id; ?>" /><input name="Detalles" type="submit" value="Detalles" class="btn btn-info" /></form>
        </div></a></div>
    <!-- end colored -->
 
            
				</div>
			<?php
           
		
		}
		
	?>
	</div>
</div>
        <div style="height: 50px;"></div>
      <!-- Pagination -->
      <div align="center">
      <?php
          if($nro_pagina>1)
              echo "<a style='color:black' href='mortero.php?num=".($nro_pagina-1)."'> Anterior ></a> ";
              
       for ($i=1; $i<=$can_paginas; $i++){
           if ($i==$nro_pagina)
               echo $i." ";
           else 
               echo "<a style='color:black' href='mortero.php?num=$i'>$i</a> ";
       } 
          
          if($nro_pagina<$can_paginas)
               echo "<a style='color:black' href='mortero.php?num=".($nro_pagina+1)."'> Siguiente ></a> ";
          
       ?>
      </div>
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