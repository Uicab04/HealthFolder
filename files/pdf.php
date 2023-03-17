
<?php
require_once('tcpdf/tcpdf.php');

// Obtener los datos del formulario
$nombre = $_POST['nombre'];
$apellidos = $_POST['apellidos'];
$edad = $_POST['edad'];
$genero = $_POST['genero'];
$diagnostico = $_POST['diagnostico'];
$tratamiento = $_POST['tratamiento'];
$alergias = $_POST['alergias'];
$medicamentosActuales = $_POST['medicamentosActuales'];

// Crear un nuevo objeto TCPDF
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// Agregar una página
$pdf->AddPage();

// Establecer la fuente
$pdf->SetFont('times', '', 12);

// Agregar el contenido del PDF
$html = '
<h1>Expediente Médico</h1>
<table>
<tr><td><strong>Nombre:</strong></td><td>' . $nombre . '</td></tr>
<tr><td><strong>Apellidos:</strong></td><td>' . $apellidos . '</td></tr>
<tr><td><strong>Edad:</strong></td><td>' . $edad . '</td></tr>
<tr><td><strong>Género:</strong></td><td>' . $genero . '</td></tr>
<tr><td><strong>Diagnóstico:</strong></td><td>' . $diagnostico . '</td></tr>
<tr><td><strong>Tratamiento:</strong></td><td>' . $tratamiento . '</td></tr>
<tr><td><strong>Alergias:</strong></td><td>' . $alergias . '</td></tr>
<tr><td><strong>Medicamentos Actuales:</strong></td><td>' . $medicamentosActuales . '</td></tr>
</table>
';
$pdf->writeHTML($html, true, false, true, false, '');

// Descargar el archivo PDF
$pdf->Output('expediente.pdf', 'D');

?>