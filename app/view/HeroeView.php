<?php
require_once "View.php";

class HeroeView extends View{

    public function __construct(){
        parent::__construct();
    }

    public function showHeroes(){
        //Aqui se borro algo que lucas no quiere reconocer,
        //insertar una ruta a un assign.
        
        $this->smarty->display('./templates/heroes.tpl');
    }

    public function renderHeroes($heroes, $atributos){
        $this->smarty->assign('atributos', $atributos);
        $this->smarty->assign('heroes', $heroes);
        $this->smarty->display('./templates/heroes.tpl');
    }
}