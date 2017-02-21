<?php
session_start();
class ProductsController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
	
    }
	
	public function registerAction(){
		$user = New Users();
		$username    = $this->request->getPost('username');
			$password    = $this->request->getPost('password');
		// store and check for errors
		$success = $user->save(
		$this->request->getPost(),
			array(
				"username",
				"password",
				'active',
				)
			);
			
		if ($success){
		 $this->session->set("auth", "auth");
				  $this->session->set("username", $username);
				   $this->session->set("password", $password);	
			 header('location:/home');
		} else {
				header('location/login');
			}
	}
	
	
	private function registersessionAction(){
	if($this->request->isPost())
		{
			// get data from user
		$this->request->getPost('username');
		$this->request->getPost('password');
			// find user in database
			$user = Users::findFirst(array(
			"username = :username: AND password = :password AND active = 'Y':",
			"bind" => array(
			"username" => $username,
			"password" => $password,
			)
						));
						if($user != FALSE){
							$this->session->set("auth","auth");
							$this->session->set("username","$username");
							$this->session->set("password","$password");
						// forward to home if user is valid
						header('location/home');
						}else{
							header('location/login');
						}
		}
	}
	
   
}

