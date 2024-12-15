<?php
require_once('ProductController.php');


$route = $_GET['route'] ?? $_POST['route'] ?? '';

switch ($route) {
    case 'index':
    default:
        ProductController::index();


        break;
    case 'create':
        ProductController::create();
        
        
        break;
    
    case 'store':

        $data = $_POST;

        ProductController::store($data);
        break;
    
    case 'delete':

        var_dump($_POST);
        $id = $_POST['id'];
    
        ProductController::Delete($id);


        break;
    }