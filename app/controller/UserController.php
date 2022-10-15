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

    public function registerAction($nombre, $email, $password){
        $this->model->getUser($email);
        if (!empty($user)){
            $this->redirectRoute('register');
        }else {
            $this->registerUser($nombre, $email, $password);
        }
    }

    private function registerUser($nombre, $email, $password){
        session_start();
        $_SESSION['logged'] = true;
        $_SESSION['rol'] = 'user';
        $hashedPassword = password_hash($password, PASSWORD_BCRYPT);
        $this->model->register($nombre, $email, $hashedPassword);
        $this->redirectRoute('home');
    }
}