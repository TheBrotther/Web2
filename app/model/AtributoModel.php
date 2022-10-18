<?php

require_once "Model.php";

class AtributoModel extends model{

    public function __construct(){
        parent::__construct();
    }

    function getAtributos(){
        $sentencia = $this->db->prepare('SELECT * FROM atributo');
        $sentencia->execute(array());
        $atributos = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $atributos;
    }
}