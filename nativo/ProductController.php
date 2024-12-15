<?php

// esto comunica la vista con el model
require_once('Product.php');

class ProductController {

    public static function index() {

            // incluir el model;
        $products = Product::get();
        require_once('view-products.php'); // Incluir la vista;
        exit;

    }
    
    public static function create() {

        require_once('create-products.php'); // Incluir la vista;
        exit;
    }

    public static function store($data) {
        
        product::store($data);
        
        header("Location: http://nativo.test/index.php");
        exit();

    }

    public static function delete($id) {
        
        product::delete($id);
        
        header("Location: http://nativo.test/index.php");
        exit();
    }

}
