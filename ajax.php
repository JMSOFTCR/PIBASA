<?php
require_once('config.php');
 
$html = '';
$page = $_GET['page'];
$rowsPerPage = NUM_ITEMS_BY_PAGE;
$offset = ($page - 1) * $rowsPerPage;
sleep(1);
 
$result = $connexion->query(
    'SELECT * FROM product p 
    LEFT JOIN product_lang pl ON (pl.id_product = p.id_product AND pl.id_lang = 1) 
    LEFT JOIN `image` i ON (i.id_product = p.id_product AND cover = 1) 
    WHERE active = 1 
    ORDER BY date_upd DESC LIMIT '.$offset.', '.$rowsPerPage
);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $html .= '<li class="col-lg-4">';
        $html .= '<div class="item">';
        $html .= '<h3>'.$row['name'].'</h3>';
        ...
        $html .= '</div>';
        $html .= '</li>';
    }
}
 
echo $html;
?>