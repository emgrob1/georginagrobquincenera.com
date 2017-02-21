<?php

session_start();

class LoginController extends \Phalcon\Mvc\Controller
{
	
    public function indexAction()
    {
    	 
    }

	

	public function loginAction()
	{
	// find user in database
		if($this->request->isPost())
		{
			// get data from user
			$username    = $this->request->getPost('username');
			$password    = $this->request->getPost('password');
			// find user in database
			$user = Users::findFirst(array(
			 "username = :username: AND password = :password: AND active = :active: ",
			"bind" => array(
			"username" => $username,
			"password" => $password,
			"active" => 'Y',
			)
			
			));
			
			 if($user != FALSE)
			 {
			 	
				 $this->session->set("auth", "auth");
				  $this->session->set("username", $username);
				   $this->session->set("password", $password);			
			   $this->session->set("email", $password);	
			// forward to home if user is valid
				header('location:/home');
				
			}
			else
			{
	  			header('location:/login');
			}
		}
	}
	
	public function endsessionAction(){
		session_destroy();
		header('location:/home');
	}
	
	 private function _registerSession($user)
    {
        
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

