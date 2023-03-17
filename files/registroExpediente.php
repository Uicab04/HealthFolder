<?php
include("../clases/Conexion.php");

$db = new Conexion();

//obtener las variables del formulario
$nombre = htmlentities($_POST['nombre'],ENT_NOQUOTES,"UTF-8");
$apellidos = htmlentities($_POST['apellidos'],ENT_NOQUOTES,"UTF-8");
$edad = htmlentities($_POST['edad'],ENT_NOQUOTES,"UTF-8");
$genero = htmlentities($_POST['genero'],ENT_NOQUOTES,"UTF-8");
$diagnostico = htmlentities($_POST['diagnostico'],ENT_NOQUOTES,"UTF-8");
$tratamiento = htmlentities($_POST['tratamiento'],ENT_NOQUOTES,"UTF-8");
$alergias = htmlentities($_POST['alergias'],ENT_NOQUOTES,"UTF-8");
$medicamentosActuales = htmlentities($_POST['medicamentosActuales'],ENT_NOQUOTES,"UTF-8");
$fechaRegistro = date("Y-m-d");

//indicar que se usaran transacciones
$db->beginTransaction();

//preparar la consulta
$sql = $db->prepare("INSERT INTO expedientes_medicos (nombre, apellidos, edad, genero, diagnostico, tratamiento, alergias, medicamentos_actuales, fecha_creacion) VALUES (:nombre, :apellidos, :edad, :genero, :diagnostico, :tratamiento, :alergias, :medicamentosActuales, :fechaRegistro)");
$sql->bindParam(':nombre', $nombre, PDO::PARAM_STR);
$sql->bindParam(':apellidos', $apellidos, PDO::PARAM_STR);
$sql->bindParam(':edad', $edad, PDO::PARAM_STR);
$sql->bindParam(':genero', $genero, PDO::PARAM_STR);
$sql->bindParam(':diagnostico', $diagnostico, PDO::PARAM_STR);
$sql->bindParam(':tratamiento', $tratamiento, PDO::PARAM_STR);
$sql->bindParam(':alergias', $alergias, PDO::PARAM_STR);
$sql->bindParam(':medicamentosActuales', $medicamentosActuales, PDO::PARAM_STR);
$sql->bindParam(':fechaRegistro', $fechaRegistro, PDO::PARAM_STR);

$sql->execute();

if($sql){
    $db->commit();
    $jsondata = array("success" => true,
    "mensaje" => "Los datos se guardaron correctamente");
    }
    else{
    $db->rollBack();
    $jsondata = array("success" => false,
    "mensaje" => "Ocurrió un error al intentar guardar los datos");
    }
    
    // enviar respuesta en formato JSON
header('Content-type: application/json; charset=utf-8');
echo json_encode($jsondata); 
exit();
          
// :

require_once('../tcpdf/examples/tcpdf_include.php');

// Obtener los datos del formulario
$nombre = $_POST['nombre'];
$apellidos = $_POST['apellidos'];
$edad = $_POST['edad'];
$genero = $_POST['genero'];
$diagnostico = $_POST['diagnostico'];
$tratamiento = $_POST['tratamiento'];
$alergias = $_POST['alergias'];
$medicamentosActuales = $_POST['medicamentosActuales'];

// Crear un nuevo PDF
$pdf = new TCPDF();

// Agregar una nueva página
$pdf->AddPage();

// Escribir los datos en el PDF
$pdf->SetFont('helvetica', 'B', 16);
$pdf->Cell(0, 10, 'Expediente Médico', 0, 1);
$pdf->Ln();
$pdf->SetFont('helvetica', '', 12);
$pdf->Cell(50, 10, 'Nombre: ', 0, 0);
$pdf->Cell(0, 10, $nombre.' '.$apellidos, 0, 1);
$pdf->Cell(50, 10, 'Edad: ', 0, 0);
$pdf->Cell(0, 10, $edad, 0, 1);
$pdf->Cell(50, 10, 'Género: ', 0, 0);
$pdf->Cell(0, 10, $genero, 0, 1);
$pdf->Cell(50, 10, 'Diagnóstico: ', 0, 0);
$pdf->Cell(0, 10, $diagnostico, 0, 1);
$pdf->Cell(50, 10, 'Tratamiento: ', 0, 0);
$pdf->Cell(0, 10, $tratamiento, 0, 1);
$pdf->Cell(50, 10, 'Alergias: ', 0, 0);
$pdf->Cell(0, 10, $alergias, 0, 1);
$pdf->Cell(50, 10, 'Medicamentos actuales: ', 0, 0);
$pdf->Cell(0, 10, $medicamentosActuales, 0, 1);

// Enviar el PDF al navegador
$pdf->Output('expediente_medico.pdf', 'I');
?>


