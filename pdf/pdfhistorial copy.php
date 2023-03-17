<?php
require_once('../tcpdf/examples/tcpdf_include.php');

// $menuInfo = $menu->fetch();


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
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

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
