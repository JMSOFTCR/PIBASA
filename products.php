
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
      
      <link href="vendor/bootstrap/css/footer.css" rel="stylesheet">
    <title>PISOS DE LA BAJURA S.A.</title>
    <?php include './inc/link.php'; ?>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="css/card.css" rel="stylesheet">
    <link href="css/ihover.css" rel="stylesheet">
    <link href="css/hover.css" rel="stylesheet">
     

      
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
    echo "";
        }

      
     $result = $conn->query("SELECT COUNT(*) as total_products FROM product WHERE categoryid = \"$id\"");
     $row = $result->fetch_assoc();
     $num_total_rows = $row['total_products']; 
   
      
     $query=mysqli_query($conn,"select * from product where categoryid = \"$id\" order by product_name");  
    $nro_reg=mysqli_num_rows($query); 
    $Total = $nro_reg;

    
      
    $reg_por_pagina=8; 
      
    @$nro_pagina=$_GET['num']; 
    
    if(is_numeric($nro_pagina))
        $inicio=($nro_pagina-1)*$reg_por_pagina;
        else 
        $inicio=0;
      
       $id = $_GET['id'];
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
  
<div class="container">
<div style="height: 50px;"></div>
    <h1 style=" ">Productos</h1>
      
       <div class="row">
        <div class="col-lg-12">
            <img src="img/Bannerp/ceramica2.jpg" style="width: 100%;">
        </div>
        </div>
<div style="height: 50px;"></div>
   
     

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.php" style="color:black">Inicio</a>
        </li>
        <li class="breadcrumb-item active"></li>
      </ol>

    <a style="color: gray" >Disponemos de <?php echo $num_total_rows ?> productos</a>
    
	<div style="height: 50px;"></div>
	<div> 
        
	<?php
		$inc=4;
		
		while($row=mysqli_fetch_array($query)){
            
         $id=$row['productid'];
         $name=$row['product_name'];
         $photo=$row['photo'];
         $price=$row['product_price'];
			
			$inc = ($inc == 4) ? 1 : $inc+1; 
			if($inc == 1) echo "<div class='row'>";  
			
			?>
				<div class="col-sm-3">

  <div class="row">
 
 
    <!-- colored -->
    <div class="ih-item square colored effect4" style="height:200px; "><a id="enviar">
        <div class="img"><img src="POS/<?php if (empty($photo)){echo "upload/noimage.jpg";}else{echo $photo;} ?>" alt="img" style="width:200px;"></div>
        <div class="mask1"></div>
        <div class="mask2"></div>
        <div class="info">  
          <h3 style="text-align:left"><?php echo $name; ?></h3>
          <h4>₡ <?php echo $price; ?></h4>
             <form action="details.php" method="post" name="Detalle"><input name="id_txt" type="hidden" value="<?php echo $id; ?>" /><input name="Detalles" type="submit" value="Detalles" class="btn btn-info" /></form>
        </div></a></div>
    <!-- end colored -->
 

    
  </div>
                    
				</div>
			<?php
           
		if($inc == 4) echo "</div><div style='height: 30px;'></div>";
		}
		if($inc == 1) echo "<div class='col-lg-3></div><div class='col-lg-3'></div><div class='col-lg-3'></div></div>"; 
		if($inc == 2) echo "<div class='col-lg-3'></div><div class='col-lg-3'></div></div>"; 
		if($inc == 3) echo "<div class='col-lg-3'></div></div>"; 
	?>
	</div>
</div>
        <div style="height: 50px;"></div>
      <!-- Pagination -->
           <div align="center">
      <?php
//Si hay registros
if ($num_total_rows > 0) {
    $num_pages = ceil($num_total_rows / NUM_ITEMS_BY_PAGE);
    $result = $conn->query(
        'SELECT * FROM product p 
        LEFT JOIN product_lang pl ON (pl.id_product = p.id_product AND pl.id_lang = 1) 
        LEFT JOIN image i ON (i.id_product = p.id_product AND cover = 1) 
        WHERE active = 1 
        ORDER BY date_upd DESC 
        LIMIT 0, '.NUM_ITEMS_BY_PAGE
    );
    if ($result->num_rows > 0) {
        echo '<ul class="row items">';
        while ($row = $result->fetch_assoc()) {
            echo '<li class="col-lg-4">';
            echo '<div class="item">';
            echo '<h3>'.$row['name'].'</h3>';
            echo '...';
            echo '</div>';
            echo '</li>';
 
        }
        echo '</ul>';
    }
 
    if ($num_pages > 1) {
        echo '<div class="row">';
        echo '<div class="col-lg-12">';
        echo '<nav aria-label="Page navigation example">';
        echo '<ul class="pagination justify-content-end">';
 
        for ($i=1;$i<=$num_pages;$i++) {
            $class_active = '';
            if ($i == 1) {
                $class_active = 'active';
            }
            echo '<li class="page-item '.$class_active.'"><a class="page-link" href="#" data="'.$i.'">'.$i.'</a></li>';
        }
 
        echo '</ul>';
        echo '</nav>';
        echo '</div>';
        echo '</div>';
    }
}
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


<script type="text/javascript">
$(document).ready(function() {	
    $('.pagination li a').on('click', function(){
        $('.items').html('<div class="loading"><img src="images/loading.gif" width="70px" height="70px"/><br/>Un momento por favor...</div>');
 
        var page = $(this).attr('data');		
        var dataString = 'page='+page;
 
        $.ajax({
            type: "GET",
            url: "ajax.php",
            data: dataString,
            success: function(data) {
                $('.items').fadeIn(2000).html(data);
                $('.pagination li').removeClass('active');
                $('.pagination li a[data="'+page+'"]').parent().addClass('active');
            }
        });
        return false;
    });              
});    
</script>