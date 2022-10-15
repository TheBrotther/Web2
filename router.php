<?php
require_once "app/controller/UserController.php";
require_once "app/controller/HeroeController.php";

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');
$userController = new UserController();
$heroeController = new HeroeController();

$action = 'home';

if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}
$params = explode('/', $action); 
switch ($params[0]){
    case 'home':
        $userController->showHome();
        break;

    case 'login';
        $userController->showLogin();
        break;

    case 'register';
        $userController->showRegister();
        break;

    case 'heroes';
        if ( !empty($params[1])){
            $heroeController->showHeroes($params[1]);
        }else{
            $heroeController->showHeroes();}
        break;


    default:
        echo('<h1>Error 404, pagina no encontrada.</h1>');
    break;
}