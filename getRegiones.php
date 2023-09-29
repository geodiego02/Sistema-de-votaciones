<?php

include_once  'database.php';


try {
    $stmt = $pdo->prepare("SELECT id, nombre FROM regiones");
    $stmt->execute();
    $regiones = $stmt->fetchAll();

    echo json_encode(['success' => true, 'data' => $regiones]);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => 'Hubo un error al obtener las regiones. Por favor, inténtalo de nuevo más tarde.']);
}

?>
