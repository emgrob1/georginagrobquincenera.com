<?php
session_start();
class DirectionsController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
if($_SESSION['auth'] == 'auth')
    	{
		echo $this->view->render('directions', 'index');
		
		}
		else 
		{
				 header('location:/login');	
		}
    }

}

