<?php

require_once './app/model/Model.php';
require_once './app/view/View.php';

class Controller{

    protected $view;
    protected $model;
    
    //El constructor construye la instancia/genera el objeto.
    function __construct($view = null, $model = null){
        $this->model = $model;
        $this->view = $view;
    }

    public function redirectRoute($route)
    {
        header("Location: ".BASE_URL.$route);
        die;
    }
}