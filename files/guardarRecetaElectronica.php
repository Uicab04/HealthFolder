<?php
include("../clases/Conexion.php");

// Obtener las variables del formulario
$paciente = htmlentities($_POST['paciente'], ENT_NOQUOTES, "UTF-8");
$edad = htmlentities($_POST['edad'], ENT_NOQUOTES, "UTF-8");
$medicamento = htmlentities($_POST['medicamento'], ENT_NOQUOTES, "UTF-8");
$dosis = htmlentities($_POST['dosis'], ENT_NOQUOTES, "UTF-8");
$frecuencia = htmlentities($_POST['frecuencia'], ENT_NOQUOTES, "UTF-8");
$observaciones = htmlentities($_POST['observaciones'], ENT_NOQUOTES, "UTF-8");

// Validar que se hayan ingresado todos los campos
if (empty($paciente) || empty($edad) || empty($medicamento) || empty($dosis) || empty($frecuencia) || empty($observaciones)) {
    $jsondata = array("success" => false, "mensaje" => "Por favor, complete todos los campos");
} else {
    $db = new Conexion();

    // Indicar que se usaran transacciones
    $db->beginTransaction();

    // Preparar la consulta
    $sql = $db->prepare("INSERT INTO recetas_electronicas (paciente, edad, medicamento, dosis, frecuencia, observaciones) VALUES (:paciente, :edad, :medicamento, :dosis, :frecuencia, :observaciones)");
    $sql->bindParam(':paciente', $paciente, PDO::PARAM_STR);
    $sql->bindParam(':edad', $edad, PDO::PARAM_INT);
    $sql->bindParam(':medicamento', $medicamento, PDO::PARAM_STR);
    $sql->bindParam(':dosis', $dosis, PDO::PARAM_STR);
    $sql->bindParam(':frecuencia', $frecuencia, PDO::PARAM_STR);
    $sql->bindParam(':observaciones', $observaciones, PDO::PARAM_STR);

    $sql->execute();

    if ($sql) {
        $db->commit();
        $jsondata = array("success" => true, "mensaje" => "La receta se ha generado correctamente");
    } else {
        $db->rollBack();
        $jsondata = array("success" => false, "mensaje" => "Ocurrió un error al intentar generar la receta");
    }
}

// Enviar respuesta en formato JSON
header('Content-type: application/json; charset=utf-8');
echo json_encode($jsondata);
exit();
?>