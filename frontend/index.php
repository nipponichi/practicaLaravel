<?php
echo "Cargando estudiantes desde la API...<br>";

$api_url = 'http://backend:9000/api/students';

$response = @file_get_contents($api_url);

if ($response === FALSE) {
    echo "Error: No se pudo conectar con la API.<br>";
    exit;
}

$api_response = json_decode($response, true);

$students = $api_response['data'];

if (empty($students)) {
    echo "No se encontraron estudiantes.";
    exit;
}

echo "<ul>";
foreach ($students as $student) {
    echo "<li>{$student['id']} - {$student['name']} ({$student['email']}) - Teléfono: {$student['phone']} - Edad: " 
    . ($student['age'] ?? 'N/A') . " - Género: " . ($student['gender'] == 'm' ? 'Masculino' : 'Femenino') . "</li>";
}
echo "</ul>";


