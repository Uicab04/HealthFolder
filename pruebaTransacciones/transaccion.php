<?php
include("conexionPDO.php");

$db = new ConexionPDO();


$sql = $db->query("INSERT INTO tc_marcas (nombre) VALUES ('Nokia')");

if($sql){
	$sql = $db->query("SELECT MAX(id_marca) AS id FROM tc_marcas");
	$datos = $sql->fetch();
	$idMarca = $datos["id"];

	if($sql){
		$sql = $db->query("INSERT INTO tc_modelos (id_marca, nombre_modelo) VALUES (".$idMarca.", '100')");

		$sql = $db->query("INSERT INTO tc_modelos (id_marca, nombre_modelo) VALUES (".$idMarca.", 'C1-01')");

		$sql = $db->query("INSERT INTO tc_modelos (id_marca, nombre_modelo) VALUES (".$idMarca.", '6500C')");

		$sql = $db->query("INSERT INTO tc_modelos (id_marca, nombre_modelo) VALUES (".$idMarca.", '5250')");

		if($sql){
			echo "Los modelos se registraron corretamente";
		}
		else{
			echo "No se pudieron registrar los modelos";
		}

	}
	else{
		echo "No se pudo consultar el id marca";
	}
}
else{
	echo "La consulta no fue exitosa";
}


?>