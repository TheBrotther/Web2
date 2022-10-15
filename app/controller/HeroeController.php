<?php
require_once "Controller.php";
require_once './app/model/HeroeModel.php';
require_once './app/view/HeroeView.php';
require_once './app/model/AtributoModel.php';

class HeroeController extends Controller{

    protected  $atributoModel;
    //private $atributo_model;
    public function __construct(){
        parent::__construct(new HeroeView(),new HeroeModel());
        $this->atributoModel = new AtributoModel();
    }

    public function showHeroes($id_atributo = null){
        $heroes = [];
        if (!empty($id_atributo)){  
            $heroes = $this->model->getHeroesByAtribute($id_atributo);
        }else{
            $heroes = $this->model->getHeroes();
        }
        $this->view->renderHeroes($heroes, $this->atributoModel->getAtributos());

        //if (!$id_atributo){
        //    $heroes = $this->model->getHeroesByAtributo($id_atributo);
        //    $atributos = $this->atributoModel->getAtributos();
        //    $this->view->renderHeroes($heroes, $atributos);
        //}else{
        //    $heroes = $this->model->getHeroes();
        //    $atributos = $this->atributoModel->getAtributos();
        //    $this->view->renderHeroes($heroes, $atributos);
        //}

        //$this->view->showHeroes();
    }
    
    //public function formHeroe(){
    //    $atributos = $this->atributo_model->getAtributos();
    //    $this->view->renderFormMateria($atributos);
    //}
}