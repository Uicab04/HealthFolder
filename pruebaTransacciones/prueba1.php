<?php
include("conexionPDO.php");

$db = new ConexionPDO();


$sql = $db->query("INSERT INTO docentes (nombre, apellidos, clave) VALUES ('Juan Alberto', 'Canul Morales', 'AKA20')");

if($sql){
	$sql = $db->query("SELECT MAX(id) AS id FROM docentes");
	$datos = $sql->fetch();
	$idMarca = $datos["id"];

	if($sql){
		$sql = $db->query("INSERT INTO docentes_telefonos (id_docente, telefono) VALUES (".$idMarca.", '9831232020')");
		$sql = $db->query("INSERT INTO docentes_telefonos (id_docente, telefono) VALUES (".$idMarca.", '9832002323')");


		$sql = $db->query("INSERT INTO docentes_emai (id_docente, emai) VALUES (".$idMarca.", 'j.alberto@hotmail.com')");

		$sql = $db->query("INSERT INTO docentes_direccion (id_docente, ciudad, colonia, calle) VALUES (".$idMarca.", 'Felipe Carrillo Puerto', 'Colonia Centro', 'Calle 80 entre 65,')");



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