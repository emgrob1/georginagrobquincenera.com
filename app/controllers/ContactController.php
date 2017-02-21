<?php
session_start();
class ContactController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
    	if($_SESSION['auth'] == 'auth')
    	{
		echo $this->view->render('contact', 'index');
		
		}
		else 
		{
				 header('location:/login');	
		}
		
    }

}

