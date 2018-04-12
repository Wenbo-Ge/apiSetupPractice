<?php

class manage{

	/*
	*
	*Request body format
	*Method: POST
	*URL:shop/all
	*{
		'name':'a',
		'price':'b',
		'image_url':'c',
		'description':'d'
	}
	*
	*
	*
	*
	*
	*will return
	*json:
	*[
		{
			'code':'200',
			'message':'success'
		}
	]
	*/


	function addMethod(){
		$name=$_POST['name'];
		$price=$_POST['price'];
		$image_url=$_POST['image_url'];
		$description=$_POST['description'];

		$conn=new DBConnection();
		$result=$conn->addItem($name,$price,$image_url,$description);

		if ($result) {
			return json_encode(array(
				'code'=>200,
				'message'=>'Item added successfully!'
			));
		} else {
			return json_encode(array(
				'code'=>500,
				'messager'=>'Item added failed!'
			));
		}
		
	}
}



?>