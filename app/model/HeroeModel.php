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

    // public function getHeroe(){
    //    $sentencia = $this->db->prepare('SELECT nombre, id_heroe FROM heroe');
    //    $sentencia->execute(array());
    //    $heroes = $sentencia->fetchAll(PDO::FETCH_OBJ);
    //    return $heroes;
    //}

    public function getHeroesByAtribute($id_atributo){
        $sentencia = $this->db->prepare("SELECT * FROM heroe WHERE id_atributo_fk = ?");
        $sentencia->execute(array($id_atributo));
        return $sentencia->fetchAll(PDO::FETCH_OBJ);
    }

    //function getHeroeByNombre($id_heroe, $nombre){
    //    $sentencia = $this->db->prepare('SELECT nombre, id_heroe FROM atributo WHERE id_heroe = ? AND nombre = ?');
    //    $sentencia->execute(array($id_heroe, $nombre));
    //    $heroes = $sentencia->fetch(PDO::FETCH_OBJ);
    //    return $heroes;
    //}


}