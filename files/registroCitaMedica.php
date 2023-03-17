    <?php
    include("../clases/Conexion.php");

    // Obtener las variables del formulario
    $doctor = htmlentities($_POST['doctor'], ENT_NOQUOTES, "UTF-8");
    $fecha = htmlentities($_POST['fecha'], ENT_NOQUOTES, "UTF-8");
    $hora = htmlentities($_POST['hora'], ENT_NOQUOTES, "UTF-8");
    $motivo = htmlentities($_POST['motivo'], ENT_NOQUOTES, "UTF-8");

    // Validar que se hayan ingresado todos los campos
    if (empty($doctor) || empty($fecha) || empty($hora) || empty($motivo)) {
        $jsondata = array("success" => false, "mensaje" => "Por favor, complete todos los campos");
    } else {
        $db = new Conexion();

        // Indicar que se usaran transacciones
        $db->beginTransaction();

        // Preparar la consulta
        $sql = $db->prepare("INSERT INTO citas_medicas (doctor, fecha, hora, motivo) VALUES (:doctor, :fecha, :hora, :motivo)");
        $sql->bindParam(':doctor', $doctor, PDO::PARAM_STR);
        $sql->bindParam(':fecha', $fecha, PDO::PARAM_STR);
        $sql->bindParam(':hora', $hora, PDO::PARAM_STR);
        $sql->bindParam(':motivo', $motivo, PDO::PARAM_STR);

        $sql->execute();

        if ($sql) {
            $db->commit();
            $jsondata = array("success" => true, "mensaje" => "La cita se ha agendado correctamente");
        } else {
            $db->rollBack();
            $jsondata = array("success" => false, "mensaje" => "Ocurrió un error al intentar agendar la cita");
        }
    }

    // Enviar respuesta en formato JSON
    header('Content-type: application/json; charset=utf-8');
    echo json_encode($jsondata);
    exit();
    ?> 