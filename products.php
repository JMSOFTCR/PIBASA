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


<style>
    
    
div.pagination {
    font-family: "Lucida Sans", Geneva, Verdana, sans-serif;
    padding:20px;
    margin:7px;
}
div.pagination a {
    margin: 2px;
    padding: 0.5em 0.64em 0.43em 0.64em;
    background-color: #ee4e4e;
    text-decoration: none;
    color: #fff;
}
div.pagination a:hover, div.pagination a:active {
    padding: 0.5em 0.64em 0.43em 0.64em;
    margin: 2px;
    background-color: #de1818;
    color: #fff;
}
div.pagination span.current {
    padding: 0.5em 0.64em 0.43em 0.64em;
    margin: 2px;
    background-color: #f6efcc;
    color: #6d643c;
}
div.pagination span.disabled {
    display:none;
}
    .loading-overlay {
display: none;
}
    </style>

</head>
 <!-- Navigation -->
    <?php include './inc/nav.php';?>
    
    
    
<body>

   <!-- Pagination -->
    
        
        <!-- /Pagination -->
    <div class="container">
        <!-- Open Container -->
        <div style="height: 50px;"></div>
        <h1 style=" ">Productos</h1>

  
            <div class="col-lg-12">
                <img src="img/Bannerp/ceramica2.jpg" style="width: 100%;">
            </div>

        <div style="height: 50px;"></div>

    

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.php" style="color:black">Inicio</a>
            </li>
            <li class="breadcrumb-item active"></li>
        </ol>

        <a style="color: gray">Disponemos de <?php echo $rowCounts ?> productos</a>

        <div style="height: 50px;"></div>
        
        <div class="post-search-panel">
    <input type="text" id="keywords" placeholder="Type keywords to filter posts" onkeyup="searchFilter()"/>
    <select id="sortBy" onchange="searchFilter()">
        <option value="">Sort By</option>
        <option value="asc">Ascending</option>
        <option value="desc">Descending</option>
    </select>
</div>
<div class="post-wrapper">
    <div class="loading-overlay"><div class="overlay-content">Loading.....</div></div>
    <div id="posts_content">
    <?php
    //Include pagination class file
    include('Pagination.php');
    
    //Include database configuration file
    include('conn.php');
    
    $limit = 9;
    
    //get number of rows
    if (isset($_GET['id']))
    {
        $id = $_GET['id'];
        $_SESSION['id'] = $id;
    }
            
    $queryNum = $conn->query("SELECT COUNT(*) as postNum FROM product where categoryid = \"$id\"");
    $resultNum = $queryNum->fetch_assoc();
    $rowCount = $resultNum['postNum'];
    
    //initialize pagination class
    $pagConfig = array(
        'totalRows' => $rowCount,
        'perPage' => $limit,
        'link_func' => 'searchFilter'
    );
    $pagination =  new Pagination($pagConfig);
    
    //get rows
    $query = $conn->query("SELECT * FROM product where categoryid = \"$id\" ORDER BY productid DESC LIMIT $limit");
    
    if($query->num_rows > 0){ ?>
        <div class="posts_list">
        <?php
            while($row = $query->fetch_assoc()){ 
                $postID = $row['productid'];
                $name = $row['product_name'];                
                $photo = $row['photo'];                
                $price = $row['product_price'];                
        ?>
                  
          
           
            <div class="d-inline-flex p-4">

           <div class="ih-item square colored effect4" style="height:200px; ">
                <a id="enviar">
                    <div class="img"><img src="POS/<?php if (empty($photo)){echo " upload/noimage.jpg ";}else{echo $photo;} ?>" alt="img" style="width:200px;"></div>
                    <div class="mask1"></div>
                    <div class="mask2"></div>
                    <div class="info">
                        <h3 style="text-align:left">
                            <?php echo $name; ?>
                        </h3>
                        <h4>₡
                            <?php echo $price; ?>
                        </h4>
                        <form action="details.php" method="post" name="Detalle"><input name="id_txt" type="hidden" value="<?php echo $id; ?>" /><input name="Detalles" type="submit" value="Detalles" class="btn btn-info" /></form>
                    </div>
                </a>
            </div>
            </div>
       
    
            
        <?php } ?>
        </div>
        <?php echo $pagination->createLinks(); ?>
    <?php } ?>
    </div>
</div>

    </div>
    <!-- close Container -->


    <div style="height: 50px;"></div>
    <!-- Pagination -->
    <div align="center">

    </div>

    <!-- /.container -->

    <!-- Footer -->
    <?php include './inc/footer.php'; ?>

    <!-- Bootstrap core JavaScript -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
     	        <script src="http://demos.codexworld.com/includes/js/bootstrap.js"></script>

    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>


<script>
function searchFilter(page_num) {
    page_num = page_num?page_num:0;
    var keywords = $('#keywords').val();
    var sortBy = $('#sortBy').val();
    $.ajax({
        type: 'POST',
        url: 'getData.php',
        data:'page='+page_num+'&keywords='+keywords+'&sortBy='+sortBy,
        beforeSend: function () {
            $('.loading-overlay').show();
        },
        success: function (html) {
            $('#posts_content').html(html);
            $('.loading-overlay').fadeOut("slow");
        }
    });
}
</script>