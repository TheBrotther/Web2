<?php

require_once "Model.php";

class HeroeModel extends Model{

    public function __construct(){
        parent::__construct();
    }

    function getHeroes(){
        $sentencia = $this->db->prepare('SELECT * FROM heroe');
        $sentencia->execute(array());
        return $sentencia->fetchAll(PDO::FETCH_OBJ);
     }

    public function getHeroesByAtribute($id_atributo){
        $sentencia = $this->db->prepare("SELECT * FROM heroe WHERE id_atributo_fk = ?");
        $sentencia->execute(array($id_atributo));
        return $sentencia->fetchAll(PDO::FETCH_OBJ);
    }

}