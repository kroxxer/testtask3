<?php

$request = $_SERVER['REQUEST_URI'];
$connectionString = 'user=admin password=SXpr4qEcUwN3vvm6N7goZbUTRZeqbE7a host=dpg-coqcdi779t8c738e9b90-a.frankfurt-postgres.render.com dbname=users_6sfe port=5432 sslmode=require';
$postgreConnection = pg_connect($connectionString);

if ($postgreConnection)
    echo 'Connected';

switch ($request) {
    case '':
    case '/':
        require __DIR__ . '/index.html';
        break;

    case '/sort':
        require __DIR__ . '/users.php';
        break;

    case '/filter':
        require __DIR__ . '/contact.php';
        break;

    case '/add':
        require __DIR__ . '/add.php';
        break;
    
    case '/show':
        require __DIR__ . '/show.php';
        break;
}

pg_close($postgreConnection);