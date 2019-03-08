<?php
ini_set(‘display_errors’, ‘On’);
error_reporting(E_ALL);

$db_dsn = array(
'host'=>'localhost',
'dbname'=>'db_cms',
'charset'=>'utf8'
);
$dsn = 'mysql:'.http_build_query($db_dsn, '', ';');
//This is the DB credentials
$db_user = 'root';
$db_pass = 'root';
try{
$pdo = new PDO($dsn, $db_user, $db_pass);
}catch(PDOException $exception){
echo 'Connection Error:'.$exception->getMessage();
exit();
}


// $query = 'SELECT * FROM tbl_products';
// $ex = $pdo->query($query);
if(isset($_GET['category'])){
  $category = $_GET['category'];
  //echo 'set'; exit();
  echo $category;
  $query = "SELECT * FROM tbl_products WHERE product_category = :category";
  //$query = "SELECT * FROM tbl_products WHERE product_category = 'Womens'";
}
//$get_products = $pdo->query($query);
$get_products = $pdo->prepare($query);

$get_products->execute(
  array(
      ':category' => $category
    )
  );

//$query = "SELECT * FROM tbl_products";

$results = array();
while($row = $get_products->fetch(PDO::FETCH_ASSOC)) {
  $results[] = $row;
}

//return $results;
echo json_encode($results);
