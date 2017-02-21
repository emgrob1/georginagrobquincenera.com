<?php
session_start();
class CreatersvpController extends \Phalcon\Mvc\Controller {

	public function indexAction() {
		if ($_SESSION['auth'] == 'auth') {

		} else {
			header('location:/login');
		}
	}

}
