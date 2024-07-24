
<?php

$request = $_SERVER['REQUEST_URI'];
$connectionString = 'user=admin password=SXpr4qEcUwN3vvm6N7goZbUTRZeqbE7a host=dpg-coqcdi779t8c738e9b90-a.frankfurt-postgres.render.com dbname=users_6sfe port=5432 sslmode=require';
$postgreConnection = pg_connect($connectionString);
$methodName = 'POST';

if ($postgreConnection)
    echo 'Connected';

switch ($request) {
        case '':
        case '/':
            pg_close($postgreConnection);
            header('Location: index.html');
            require  __DIR__ . '/index.html';
            break;

    case '/sort':
        if (stristr($_SERVER['REQUEST_METHOD'], $methodName))
            require __DIR__ . '/sort.php';
        break;

    case '/filter':
        if (stristr($_SERVER['REQUEST_METHOD'], $methodName))
            require __DIR__ . '/filter.php';
        break;

    case '/add':
        if (stristr($_SERVER['REQUEST_METHOD'], $methodName))
            require __DIR__ . '/add.php';
        break;
    
    case '/show':
        if (stristr($_SERVER['REQUEST_METHOD'], $methodName))
            require __DIR__ . '/show.php';
        break;
}

pg_close($postgreConnection);