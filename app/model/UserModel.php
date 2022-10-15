<?php

require_once "Model.php";

class UserModel extends Model{

    public function __construct(){
        parent::__construct();
    }

    public function register($name, $email, $password, $rol = 'user'){
        $template = $this->db->prepare("INSERT INTO usuario(nombre, email, contrasenia, rol) VALUES(?, ?, ?, ?)");
        $template->execute([$name, $email, $password, $rol]);
    }

    public function getUser($email){
        $template = $this->db->prepare("SELECT * FROM usuario WHERE email = ?");
        $template->execute([$email]);
    }
}