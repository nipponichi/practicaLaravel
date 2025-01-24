<?php
echo "Cargando estudiantes desde la API...<br>";

// URL del backend dentro de Docker
$api_url = 'http://backend:9000/api/students';

// Obtener datos de la API
$response = @file_get_contents($api_url);

// Verificar si la solicitud fue exitosa
if ($response === FALSE) {
    echo "Error: No se pudo conectar con la API.<br>";
    exit;
}

// Decodificar la respuesta JSON
$api_response = json_decode($response, true);

// Verificar si la respuesta es válida
if (json_last_error() !== JSON_ERROR_NONE) {
    echo "Error: La respuesta de la API no es un JSON válido.<br>";
    echo "Respuesta recibida: " . htmlspecialchars($response);
    exit;
}

// Verificar si la estructura de la respuesta es correcta
if (!isset($api_response['success']) || !$api_response['success']) {
    echo "Error: La API devolvió un error: " . htmlspecialchars($api_response['message']);
    exit;
}

// Extraer la lista de estudiantes desde la clave 'data'
$students = $api_response['data'];

if (empty($students)) {
    echo "No se encontraron estudiantes.";
    exit;
}

// Mostrar los estudiantes
echo "<ul>";
foreach ($students as $student) {
    echo "<li>{$student['id']} - {$student['name']} ({$student['email']}) - Teléfono: {$student['phone']} - Edad: " . ($student['age'] ?? 'N/A') . " - Género: " . ($student['gender'] == 'm' ? 'Masculino' : 'Femenino') . "</li>";
}
echo "</ul>";
?>

