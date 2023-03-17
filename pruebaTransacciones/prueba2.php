<?php
include("conexionPDO.php");

$db = new ConexionPDO();

$db->beginTransaction();

$sql = $db->query("INSERT INTO docentes (nombre, apellidos, clave) VALUES ('Ana María', 'Ek Salazar', 'AKA22')");

if($sql){
	$sql = $db->query("SELECT MAX(id) AS id FROM docentes");
	$datos = $sql->fetch();
	$idMarca = $datos["id"];

	if($sql){
		$sql = $db->query("INSERT INTO docentes_telefonos (id_docente, telefono) VALUES (".$idMarca.", '9831252121')");

		$sql = $db->query("INSERT INTO docentes_emai (id_docente, emai) VALUES (".$idMarca.", 'a.maria@hotmail.com')");
		$sql = $db->query("INSERT INTO docentes_emai (id_docente, emai) VALUES (".$idMarca.", 'm.ana@hotmail.com')");

		$sql = $db->query("INSERT INTO docentes_direccion (id_docente, ciudad, colonia, calle) VALUES (".$idMarca.", 'Felipe Carrillo Puerto', 'Colonia Industrial,', 'Calle 20 entre 45')");


		if($sql){
			echo "Los modelos se registraron corretamente";
			$db->commit();
		}
		else{
			echo "No se pudieron registrar los modelos";
			$db->rollBack();
		}

	}
	else{
		echo "No se pudo consultar el id marca";
		$db->rollBack();
	}
}
else{
	echo "La consulta no fue exitosa";
	$db->rollBack();
}


?>