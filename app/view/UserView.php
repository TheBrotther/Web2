<?php
require_once "View.php";

class UserView extends View{

    public function __construct(){
        parent::__construct();
    }

    public function showHome(){
        //Aqui se borro algo que lucas no quiere reconocer,
        //(insertar una ruta a un assign).
        
        $this->smarty->display('./templates/home.tpl');
    }

    public function showLogin(){
        $this->smarty->display('./templates/login.tpl');
    }

    public function showRegister(){
        $this->smarty->display('./templates/register.tpl');
    }

    
}