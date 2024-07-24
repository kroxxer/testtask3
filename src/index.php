<?php

$request = $_SERVER['REQUEST_URI'];

switch ($request) {
    case '':
    case '/':
        require __DIR__ . 'index.html';
        break;

    case '/sort':
        require __DIR__ . 'users.php';
        break;

    case '/filter':
        require __DIR__ . 'contact.php';
        break;

    case '/add':
        require __DIR__ . 'add.php';
        break;
    
    case '/show':
        require __DIR__ . 'show.php';
        break;
}