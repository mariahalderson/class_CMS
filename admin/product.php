<?php
//TODO: image upload functions for edit/create-- find out how to do thumbnail

	function createProduct($name,$price,$category,$image){
		include('connect.php');

		$create_prod_query = 'INSERT INTO tbl_products(product_name,product_price,product_category,product_image)';
		$create_prod_query .= ' VALUES(:name,:price,:category,:image)';

		$create_prod_set = $pdo->prepare($create_prod_query);
		$create_prod_set->execute(
			array(
				':name'=>$name,
				':price'=>$price,
				':category'=>$category,
				':image'=>$image
			)
		);

		if($create_prod_set->rowCount()){
			// redirect_to('index.php');
      $message = 'thing was added!';
		}else{
			$message = 'Your hiring practices have failed you.. this individual sucks...';
			// return $message;
		}
    return $message;
	}


	function editProduct($name,$price,$category,$image,$id){
		include('connect.php');

		$update_prod_query = 'UPDATE tbl_products SET product_name=:name, product_price=:price,';
		$update_prod_query .=' product_category=:category, product_image=:image';
		$update_prod_query .=' WHERE product_id = :id';

		$update_prod_set = $pdo->prepare($update_prod_query);
		$update_prod_set->execute(
      array(
				':name'=>$name,
				':price'=>$price,
				':category'=>$category,
				':image'=>$image,
        ':id'=>$id
			)
		);
		//When update successfully, redirect user to index.php
		if($update_prod_set->rowCount()){
			// redirect_to('index.php');
      $message = 'Item has been updated!';
		}else{
			//otherwise, return an error message
			$message = 'Guess you got canned...';
			// return $message;
		}
    return $message;
	}

	function deleteProd($id){
		include('connect.php');
		$delete_prod_query = 'DELETE FROM tbl_products WHERE product_id = :id';
		$delete_prod = $pdo->prepare($delete_prod_query);
		$delete_user->execute(
			array(
				':id'=>$id
			)
		);

		if($delete_user){
			// redirect_to('../index.php');
      $message = 'Item Deleted';
		}else{
			$message = 'Not deleted yet..';
			// return $message;
		}
    return $message;

		//4.* (Dev) What's the security concern here???
	}
