const validarRegistroUsuario = () => {
    let nombre = document.getElementById('nombre').value;
    let apellidos = document.getElementById('apellidos').value;
    let email = document.getElementById('email').value;
    let password1 = document.getElementById('password1').value;
    let password2 = document.getElementById('password2').value;

    if (nombre.length == 0) {
        alertify.error('sssEscriba el nombre del usuario');
        return false;
    }
    if (apellidos.length == 0) {
        alertify.error('aEscriba los apellidos del usuario');
        return false;
    }
    // email
    if (email.length == 0) {
        alertify.error("Escriba el email del usuario");
        return false;
    }

    let validacionEmail = validarEmail(email);

    if(validacionEmail == false){
        alertify.error("Formato incorrecto");
        return false;
      
    }
    alert("Mensaje de prueba");

    // if (password1.length == 0) {
    //     alertify.error("Escriba la contraseña del usuario");
    //     return false;
    // }
    // if (password2.length == 0) {
    //     alertify.error("Repita la contraseña del usuario");
    //     return false;
    // }

    // if (password1 != password2) {
    //     alertify.error("Las contraseñas no coinciden");
    //     return false;
    // }

    let send = {
        nombre,
        apellidos,
        email,
        password1
    }
    let url = "files/registroUsuario.php";
    let mensaje = "Los datos se guardaron correctamente";
    let ejecutar = "verInicio()";

    ajaxPostControl(url, "registrando", send, mensaje, ejecutar);
}

const verInicio = () => {
    location.href = 'login.html';
}

function verIndex() {
    location.href = 'index.php';
}
// email
const validarEmail = valor => {
    if (/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(valor)) {
        return true;
    } else {
        return false;
    }
}

const iniciarSesion = () => {
    let email = document.getElementById('email').value;
    let password = document.getElementById('password').value;
    let recordarme = 0;

    if (email.length == 0) {
        alertify.error("Escriba el email");
        return false;
    }
    if (password.length == 0) {
        alertify.error("Escriba la contraseña");
        return false;
    }
    if (document.getElementById('recordarmeCheck').checked == true) {
        recordarme = 1;
    }

    let send = {
        email,
        password,
        recordarme
    }
    let url = "files/validarInicio.php";
    let mensaje = "";
    let ejecutar = "verIndex()";

    console.table(send);

    ajaxPostControl(url, "iniciando", send, mensaje, ejecutar);
}



//Expediente
const validarExpedienteMedico = () => {
    let nombre = document.getElementById('nombre').value.trim();
    let apellidos = document.getElementById('apellidos').value.trim();
    let edad = document.getElementById('edad').value.trim();
    let genero = document.getElementById('genero').value.trim();
    let diagnostico = document.getElementById('diagnostico').value.trim();
    let tratamiento = document.getElementById('tratamiento').value.trim();
    let alergias = document.getElementById('alergias').value.trim();
    let medicamentosActuales = document.getElementById('medicamentosActuales').value.trim();
  
    if (nombre.length == 0) {
      alertify.error('Escriba el nombre del paciente');
      return false;
    }
    if (apellidos.length == 0) {
      alertify.error('Escriba los apellidos del paciente');
      return false;
    }
    if (edad.length == 0) {
      alertify.error('Ingrese la edad del paciente');
      return false;
    }
    if (genero.length == 0) {
      alertify.error('Seleccione el género del paciente');
      return false;
    }
    if (diagnostico.length == 0) {
      alertify.error('Escriba el diagnóstico del paciente');
      return false;
    }
    if (tratamiento.length == 0) {
      alertify.error('Escriba el tratamiento del paciente');
      return false;
    }
  
    let send = {
      nombre,
      apellidos,
      edad,
      genero,
      diagnostico,
      tratamiento,
      alergias,
      medicamentosActuales
    }
    let url = "files/registroExpediente.php";
    let mensaje = "Los datos se guardaron correctamente";
    let ejecutar = "limpiarFormulario()";
    
    ajaxPostControl(url, "guardando", send, mensaje, ejecutar);
  }
  
  const limpiarFormulario = () => {
    document.getElementById('nombre').value = "";
    document.getElementById('apellidos').value = "";
    document.getElementById('edad').value = "";
    document.getElementById('genero').value = "Masculino";
    document.getElementById('diagnostico').value = "";
    document.getElementById('tratamiento').value = "";
    document.getElementById('alergias').value = "";
    document.getElementById('medicamentosActuales').value = "";
    alertify.success("El formulario se ha guardado correctamente.");
  }

  const validarCitaMedica = () => {
    let doctor = document.getElementById('doctor').value.trim();
    let fecha = document.getElementById('fecha').value.trim();
    let hora = document.getElementById('hora').value.trim();
    let motivo = document.getElementById('motivo').value.trim();

    if (doctor.length == 0) {
      alertify.error('Seleccione un doctor');
      return false;
    }
    if (fecha.length == 0) {
      alertify.error('Ingrese la fecha de la cita');
      return false;
    }
    if (hora.length == 0) {
      alertify.error('Ingrese la hora de la cita');
      return false;
    }
    if (motivo.length == 0) {
      alertify.error('Escriba el motivo de la cita');
      return false;
    }

    let send = {
      doctor,
      fecha,
      hora,
      motivo
    }
    let url = "files/registroCitaMedica.php";
    let mensaje = "La cita se ha agendado correctamente";
    let ejecutar = "limpiarFormulario()";

    ajaxPostControl(url, "guardando", send, mensaje, ejecutar);
  }


  // 
  const validarRecetaElectronica = () => {
    let paciente = document.getElementById('paciente').value.trim();
    let edad = document.getElementById('edad').value.trim();
    let medicamento = document.getElementById('medicamento').value.trim();
    let dosis = document.getElementById('dosis').value.trim();
    let frecuencia = document.getElementById('frecuencia').value.trim();
    let observaciones = document.getElementById('observaciones').value.trim();
  
    if (paciente.length == 0) {
      alertify.error('Ingrese el nombre del paciente');
      return false;
    }
    if (edad.length == 0) {
      alertify.error('Ingrese la edad del paciente');
      return false;
    }
    if (medicamento.length == 0) {
      alertify.error('Ingrese el nombre del medicamento');
      return false;
    }
    if (dosis.length == 0) {
      alertify.error('Ingrese la dosis del medicamento');
      return false;
    }
    if (frecuencia.length == 0) {
      alertify.error('Ingrese la frecuencia del medicamento');
      return false;
    }
    if (observaciones.length == 0) {
      alertify.error('Escriba las observaciones de la receta');
      return false;
    }
  
    let send = {
      paciente,
      edad,
      medicamento,
      dosis,
      frecuencia,
      observaciones
    }
    let url = "files/guardarRecetaElectronica.php";
    let mensaje = "La receta se ha generado correctamente";
    let ejecutar = "limpiarFormulario()";
  
    ajaxPostControl(url, "guardando", send, mensaje, ejecutar);
  }
  // 

  const validarHistorialMedico = () => {
    let fechaUltimaVisita = document.getElementById('fechaUltimaVisita').value.trim();
    let medicamentos = document.getElementById('medicamentos').value.trim();
    let alergias = document.getElementById('alergias').value.trim();
    let enfermedadesPrevias = document.getElementById('enfermedadesPrevias').value.trim();
    let cirugiasPrevias = document.getElementById('cirugiasPrevias').value.trim();
    let diagnosticosAnteriores = document.getElementById('diagnosticosAnteriores').value.trim();
  
    if (fechaUltimaVisita.length == 0) {
      alertify.error('Ingrese la fecha de la última visita');
      return false;
    }
    if (medicamentos.length == 0) {
      alertify.error('Ingrese los medicamentos');
      return false;
    }
    if (alergias.length == 0) {
      alertify.error('Ingrese las alergias');
      return false;
    }
    if (enfermedadesPrevias.length == 0) {
      alertify.error('Ingrese las enfermedades previas');
      return false;
    }
    if (cirugiasPrevias.length == 0) {
      alertify.error('Ingrese las cirugías previas');
      return false;
    }
    if (diagnosticosAnteriores.length == 0) {
      alertify.error('Ingrese los diagnósticos anteriores');
      return false;
    }
  
    let send = {
      fechaUltimaVisita,
      medicamentos,
      alergias,
      enfermedadesPrevias,
      cirugiasPrevias,
      diagnosticosAnteriores
    }
    let url = "files/guardarHistorialMedico.php";
    let mensaje = "El historial médico se ha guardado correctamente";
    let ejecutar = "limpiarFormulario()";
  
    ajaxPostControl(url, "guardando", send, mensaje, ejecutar);
  }
  
