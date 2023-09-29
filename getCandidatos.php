<?php
include_once  'database.php';

try {
    $stmt = $pdo->prepare("SELECT id, nombre FROM candidatos");
    $stmt->execute();
    $candidatos = $stmt->fetchAll();

    echo json_encode(['success' => true, 'data' => $candidatos]);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => 'Hubo un error al obtener los candidatos. Por favor, inténtalo de nuevo más tarde.']);
}
?>
