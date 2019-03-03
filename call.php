<?php

$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, getenv('RESPONDER') . "/response.php");
$httpHeaders = [
    'Accept: application/json'
];

curl_setopt($ch, CURLOPT_HTTPHEADER, $httpHeaders);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

// execute request
$response = curl_exec($ch);
curl_close($ch);

print_r($response);

exit();
