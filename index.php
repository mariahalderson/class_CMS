<?php
//TODO: grab all products function/filter funtions here... test layout
?>

<!doctype html>
<html>
<head>
	<meta charset='utf-8'>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="styles/main.css">
	<title>SportCheck CMS</title>
</head>
<body>

  <header>
    <div class="logo-container">
      <img src="logo.png" alt="logo">
    </div>

    <a href="#">Login</a>
  </header>

  <section id="categories">
    <h2>Filter By Category</h2>
    <ul>
      <li><a href="#">Category1</a></li>
      <li><a href="#">Category1</a></li>
      <li><a href="#">Category1</a></li>
      <li><a href="#">Category1</a></li>
      <li><a href="#">Category1</a></li>
    </ul>
  </section>

  <section id="products">
    <?php while($row = $results->fetch(PDO::FETCH_ASSOC)):?>
      <div class="product-tile">
        <a href="#">
          <div class="image-container">
            <img src="images/<?php echo $row['product_image'];?>"
      	 alt="<?php echo $row['product_name'];?>">
          </div>
      	  <h2><?php echo $row['product_name'];?></h2>
      	  <p><?php echo $row['product_category'];?></p>
          <p><?php echo $row['product_price'];?></p>
       </a>
     </div>
    <?php endwhile;?>
  </section>

  <script src="js/main.js"></script>
</body>
</html>
