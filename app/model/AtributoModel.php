<?php

require_once "Model.php";

class AtributoModel extends model{

    public function __construct(){
        parent::__construct();
    }

    function getTablaAtributos(){
        $sentencia = $this->db->prepare('SELECT * FROM atributo');
        $sentencia->execute(array());
        $tablaAtributos = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $tablaAtributos;
    }

    function getAtributos(){
        $sentencia = $this->db->prepare('SELECT * FROM atributo');
        $sentencia->execute(array());
        $atributos = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $atributos;
    }

    //function getHeroes(){
    //    $sentencia = $this->db->prepare('SELECT * FROM heroe');
    //    $sentencia->execute(array());
    //    return $sentencia->fetchAll(PDO::FETCH_OBJ);
    //}
}