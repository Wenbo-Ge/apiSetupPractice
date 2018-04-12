<?php


class DBConnection {
	private $conn;

	private function getConnInstance(){
		if (!$this->conn) {
			$this->conn = new PDO('mysql:host=localhost;dbname=Shop;charset=utf8mb4','root','root');
		}
		return $this->conn;
	}

//按照这个方法重新写一个templates.php,在里面定义一个类来写api，参考mvc3/templates/get方法
	public function getAllItemsReturnArr(){
		$stmt=$this->getConnInstance()->query('SELECT * FROM Item');
		$result=$stmt->fetchAll(PDO::FETCH_ASSOC);
		//将数据放到json里
		$json=array();
		foreach ($result as $value) {
			$temp=array(
	//左是api的调用名，右是数据库的表头名
				'id'=>$value['id'],
				'name'=>$value['name'],
				'price'=>$value['price'],
				'image_url'=>$value['image_url'],
				'description'=>$value['description']
			);
			$json[]=$temp;
		}
		return $json;
	}

	public function getAllItemsReturnArrById($id){
		$stmt=$this->getConnInstance()->prepare('SELECT * FROM Item WHERE id=:id');
		$stmt->execute(array(':id'=>$id));
		$result=$stmt->fetch();
		$json=array(
			'id'=>$result['id'],
				'name'=>$result['name'],
				'price'=>$result['price'],
				'image_url'=>$result['image_url'],
				'description'=>$result['description']
		);
		return $json;
	}

	public function addItem($name,$price,$image_url,$description){
		$stmt=$this->getConnInstance()->prepare('INSERT INTO Item(name,price,image_url,description) VALUES(:name,:price,:image_url,:description)');
		$result=$stmt->execute(array(
			':name'=>$name,
			':price'=>$price,
			':image_url'=>$image_url,
			':description'=>$description
		));
		return $result;
	}


	public function getAllItemsReturnObj(){
		$stmt=$this->getConnInstance()->query('SELECT * FROM Item');
		// 静态方法的使用：类名PDO ：：方法名
		$result=$stmt->fetchAll(PDO::FETCH_ASSOC);
		$items=array();
		// 每一个返回的是一个object，返回一个index array of object
		foreach ($result as $row) {
			
			$item= new Item();
			// 第一种方法：
			// $item->setName($row['name']);+另外3个set
			// 第二种方法：
			// 用$items[]往$items=array()传值
			$items[]=$item->arrayAdapter($row);
		}
		return $items;
	}
}






?>