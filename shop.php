<?php

class shop{

	/*
	*
	*Request body format
	*Method: GET
	*URL:shop/all
	*will return
	*json:
	*[
		{'id':1,
		'name':'MEN U BLOCKTECH COAT',
		'price':'69.90',
		'image_url':'https://uniqlo.scene7.com/is/image/UNIQLO/goods_32_405941?$prod$',
		'description':'Windproof and water-repellent! Our simple, versatile single-breasted coat.
 
 		Windproof design keeps cold air out.
		Water-repellent coating plus waterproof taped seams.
		Chambray twill material with a smooth, elegant texture.
		Simple, highly versatile single-breasted design.
		Our team headed by Christophe Lemaire provided this collection of innovative basics.'
		}
	]
	*
	*
	*
	*
	*
	*
	*/

	public function allMethod(){
		$conn=new DBConnection();
		$results=$conn->getAllItemsReturnArr();

		if ($results) {
			return json_encode($results);
		} else {
			return json_encode(array(
				'code'=>400,
				'message'=>'Items not found!'
			));
		}
		
	}

/*
	*
	*Request body format
	*Method: GET
	*URL:shop/item/3
	*will return
	*json:
	*[
		{'id':3,
		'name':'MEN BLOCKTECH PARKA',
		'price':'49.90',
		'image_url':'https://uniqlo.scene7.com/is/image/UNIQLO/goods_03_182577?$prod$',
		'description':'In water-resistant material & loaded with details! Be ready with a pocketable parka.
 
		With a durable water-repellent coating that keeps out light rain.
		Has waterproof and windproof functions added to keep the rain and wind out.
		Now with more waterproof features, such as a brim added to the hood and a rain flap on the placket.
		Breathable to keep you fresh.
		A 3-dimensional shape at the elbows and hems with different lengths in front and back add ease of movement.
		A pull was attached to the zipper to make it easier to pull.
		Comes with a convenient pouch for compact storage and carrying.'
		}
	]
	*
	*
	*
	*
	*
	*
	*/

	public function itemMethod($id){
		$conn=new DBConnection();
		$results=$conn->getAllItemsReturnArrById($id);

		if ($results) {
			return json_encode($results);
		} else {
			return json_encode(array(
				'code'=>400,
				'message'=>'Item not found!'
			));
		}
	}
}



?>