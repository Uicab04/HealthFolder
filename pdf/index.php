<?php
// Include the main TCPDF library (search for installation path).
require_once('../tcpdf/examples/tcpdf_include.php');

// create new PDF document
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);


$pdf->AddPage();
$pdf->Output('example_001.pdf', 'I');
?>