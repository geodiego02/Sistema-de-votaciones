<?php


include_once   'database.php';

// Validaciones
$errors = [];

if (empty($_POST['nombre'])) {
    $errors['nombre'] = 'El nombre no puede estar vacío.';
}

if (empty($_POST['apellido'])) {
    $errors['apellido'] = 'El apellido no puede estar vacío.';
}

if (strlen($_POST['alias']) <= 5 || !preg_match('/[A-Za-z]/', $_POST['alias']) || !preg_match('/[0-9]/', $_POST['alias'])) {
    $errors['alias'] = 'El alias debe tener más de 5 caracteres y contener letras y números.';
}

// validar RUT 
 if (validarRUT($_POST['rut'])) {
     // Validar duplicación de votos por RUT
    $stmt = $pdo->prepare("SELECT id FROM votos WHERE rut = ?");
    $stmt->execute([$_POST['rut']]);
    if ($stmt->fetch()) {
        $errors['rut'] = 'Ya existe un voto con ese RUT.';
    }
 } else {
    $errors['rut'] = 'El RUT no es válido.';
}

if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
    $errors['email'] = 'El email no es válido.';
}



$comoSeEntero = $_POST['como_se_entero'] ?? [];
if (count($comoSeEntero) < 2) {
    $errors['como_se_entero'] = 'Debes seleccionar al menos dos opciones en "Cómo se enteró de nosotros".';
}

if (empty($_POST['region'])) {
    $errors['region'] = 'Debes seleccionar una región.';
}

if (empty($_POST['comuna'])) {
    $errors['comuna'] = 'Debes seleccionar una comuna.';
}

if (empty($_POST['candidato'])) {
    $errors['candidato'] = 'Debes seleccionar un candidato.';
}

if (empty($errors)) {
    try {
        //insertar el voto en la base de datos
        $stmt = $pdo->prepare("INSERT INTO votos (nombre, apellido, alias, rut, email, region_id, comuna_id, candidato_id, como_se_entero) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->execute([$_POST['nombre'], $_POST['apellido'], $_POST['alias'], $_POST['rut'], $_POST['email'], $_POST['region'], $_POST['comuna'], $_POST['candidato'], implode(',', $comoSeEntero)]);
        echo json_encode(['success' => true, 'message' => 'Voto registrado con éxito!']);
    } catch (PDOException $e) {
        echo json_encode(['success' => false, 'message' => 'Hubo un error al registrar el voto. Por favor, inténtalo de nuevo más tarde.']);
    }
} else {
    echo json_encode(['success' => false, 'message' => 'Voto no registrado por validación de campos!', 'errors' => $errors]);
}




//validar rut chileno
function validarRut($dni){
    // Separar RUT y dígito verificador
    if (strpos($dni, "-") === false) {
        $RUT[0] = substr($dni, 0, -1);
        $RUT[1] = substr($dni, -1);
    } else {
        $RUT = explode("-", trim($dni));
    }
    // Limpiar y preparar el RUT
    $elRut = str_replace(".", "", trim($RUT[0]));
    $suma = 0;
    $factor = 2;

    // Calcular dígito verificador
    for ($i = strlen($elRut) - 1; $i >= 0; $i--) {
        $factor = $factor > 7 ? 2 : $factor;
        $suma += $elRut[$i] * $factor++;  // Usar corchetes en lugar de llaves para acceder a caracteres de string
    }

    $resto = $suma % 11;
    $dv = 11 - $resto;
    if ($dv == 11) {
        $dv = 0;
    } elseif ($dv == 10) {
        $dv = "k";
    }

    // Comparar dígito verificador
    return $dv == trim(strtolower($RUT[1]));
}

?>