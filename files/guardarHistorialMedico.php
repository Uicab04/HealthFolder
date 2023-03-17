<?php
include("../clases/Conexion.php");

// Obtener las variables del formulario
$fechaUltimaVisita = htmlentities($_POST['fechaUltimaVisita'], ENT_NOQUOTES, "UTF-8");
$medicamentos = htmlentities($_POST['medicamentos'], ENT_NOQUOTES, "UTF-8");
$alergias = htmlentities($_POST['alergias'], ENT_NOQUOTES, "UTF-8");
$enfermedadesPrevias = htmlentities($_POST['enfermedadesPrevias'], ENT_NOQUOTES, "UTF-8");
$cirugiasPrevias = htmlentities($_POST['cirugiasPrevias'], ENT_NOQUOTES, "UTF-8");
$diagnosticosAnteriores = htmlentities($_POST['diagnosticosAnteriores'], ENT_NOQUOTES, "UTF-8");

// Validar que se hayan ingresado todos los campos
if (empty($fechaUltimaVisita) || empty($medicamentos) || empty($alergias) || empty($enfermedadesPrevias) || empty($cirugiasPrevias) || empty($diagnosticosAnteriores)) {
    $jsondata = array("success" => false, "mensaje" => "Por favor, complete todos los campos");
} else {
    $db = new Conexion();

    // Indicar que se usaran transacciones
    $db->beginTransaction();

    // Preparar la consulta
    $sql = $db->prepare("INSERT INTO historial_medico (fecha_ultima_visita, medicamentos, alergias, enfermedades_previas, cirugias_previas, diagnosticos_anteriores) VALUES (:fechaUltimaVisita, :medicamentos, :alergias, :enfermedadesPrevias, :cirugiasPrevias, :diagnosticosAnteriores)");
    $sql->bindParam(':fechaUltimaVisita', $fechaUltimaVisita, PDO::PARAM_STR);
    $sql->bindParam(':medicamentos', $medicamentos, PDO::PARAM_STR);
    $sql->bindParam(':alergias', $alergias, PDO::PARAM_STR);
    $sql->bindParam(':enfermedadesPrevias', $enfermedadesPrevias, PDO::PARAM_STR);
    $sql->bindParam(':cirugiasPrevias', $cirugiasPrevias, PDO::PARAM_STR);
    $sql->bindParam(':diagnosticosAnteriores', $diagnosticosAnteriores, PDO::PARAM_STR);

    $sql->execute();

    if ($sql) {
        $db->commit();
        $jsondata = array("success" => true, "mensaje" => "El historial médico se ha guardado correctamente");
    } else {
        $db->rollBack();
        $jsondata = array("success" => false, "mensaje" => "Ocurrió un error al intentar guardar el historial médico");
    }
}

// Enviar respuesta en formato JSON
header('Content-type: application/json; charset=utf-8');
echo json_encode($jsondata);
exit();
?>
