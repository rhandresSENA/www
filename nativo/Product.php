<?php

// capa logica de la aplicacion

class product
{

    protected $mysqli;
    const SERVER = '127.0.0.1';
    const USER = 'root';
    const DB = 'nativo';

    public function __construct() {
        $this->mysqli = $this->connect();
    }

    protected function connect() {
        $connect = new mysqli(self::SERVER, self::USER, "", self::DB);

        if ($connect->connect_errno) {
            echo "Falló la conexión a MySQL: (" . $connect->connect_errno . ") " . $connect->connect_error;
            exit;
        }
        return $connect;
    }
    public static function get() :array {
        $result = (new self())->mysqli->query("SELECT id, name FROM products ORDER BY id ASC");

        $records = [];
    
        while ($row = $result->fetch_assoc()) {
            $records[] = $row;
        }
        return $records;
    }

    public static function store(array $data) {

        echo $data['name'];

        $created = (new  self())->mysqli->query("INSERT INTO products(name) VALUES ('". $data['name'] ."')");
        
        if (!$created) {
            echo "Falló la creación de la tabla productos";
            exit;
        }

        return true;
        
        }

        public static function delete(int $id) {

            echo $data['name'];
    
            $created = (new  self())->mysqli->query("DELETE FROM products WHERE id = ". $id .";");
            
            if (!$created) {
                echo "Falló la eliminación de la tabla productos";
                exit;
            }
    
            return true;
            
            }

    }
