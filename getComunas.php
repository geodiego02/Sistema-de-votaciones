<?php
include_once  'database.php';
$regionId = $_GET['region_id'] ?? null;

try {
    if ($regionId) {
        $stmt = $pdo->prepare("SELECT id, nombre FROM comunas WHERE region_id = ?");
        $stmt->execute([$regionId]);
        $comunas = $stmt->fetchAll();

        echo json_encode(['success' => true, 'data' => $comunas]);
    } else {
        echo json_encode(['success' => false, 'message' => 'ID de región no proporcionado.']);
    }
} catch (PDOException $e) {
    header('Content-Type: application/json');
    echo json_encode(['success' => false, 'message' => 'Hubo un error al obtener las comunas. Por favor, inténtalo de nuevo más tarde.']);
}
?>
