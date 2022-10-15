<?php
require_once "Controller.php";
require_once './app/model/UserModel.php';
require_once './app/view/UserView.php';

class UserController extends Controller{

    public function __construct(){
        parent::__construct(new UserView(),new UserModel());
    }

    public function showHome(){
        $this->view->showHome();
    }

    public function showLogin(){
        $this->view->showLogin();
    }

    public function showRegister(){
        $this->view->showRegister();
    }
}