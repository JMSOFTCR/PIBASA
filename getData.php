<?php
if(isset($_POST['page'])){
    //Include pagination class file
    include('Pagination.php');
    
    //Include database configuration file
    include('conn.php');
    
    $start = !empty($_POST['page'])?$_POST['page']:0;
    $limit = 10;
    
    $id = $_SESSION['$id'];
    
    //set conditions for search
    $whereSQL = $orderSQL = '';
    $keywords = $_POST['keywords'];
    $sortBy = $_POST['sortBy'];
    if(!empty($keywords)){
        $whereSQL = "WHERE where categoryid = \"$id\" and product_name LIKE '%".$keywords."%'";
    }
    if(!empty($sortBy)){
        $orderSQL = " ORDER BY productid ".$sortBy;
    }else{
        $orderSQL = " ORDER BY productid DESC ";
    }

    //get number of rows
    $queryNum = $conn->query("SELECT COUNT(*) as postNum FROM product ".$whereSQL.$orderSQL);
    $resultNum = $queryNum->fetch_assoc();
    $rowCount = $resultNum['postNum'];

    //initialize pagination class
    $pagConfig = array(
        'currentPage' => $start,
        'totalRows' => $rowCount,
        'perPage' => $limit,
        'link_func' => 'searchFilter'
    );
    $pagination =  new Pagination($pagConfig);
    
    //get rows
    $query = $conn->query("SELECT * FROM product $whereSQL $orderSQL LIMIT $start,$limit");
    
    if($query->num_rows > 0){ ?>
        <div class="posts_list">
        <?php
            while($row = $query->fetch_assoc()){ 
                $postID = $row['productid'];
                 $name = $row['product_name'];                
                $photo = $row['photo'];                
                $price = $row['product_price'];   
        ?>
            <div class="list_item"><a href="javascript:void(0);">
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
<!--            <h2><?php echo $row["product_name"]; ?></h2>-->
            </a></div>
        <?php } ?>
        </div>
        <?php echo $pagination->createLinks(); ?>
<?php } } ?>