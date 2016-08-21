<?php

class HeaderController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {

    }
	
	public function getHeader()
	{
		?>
	<head>
		<link rel="stylesheet" type="text/css" href="../css/main.css" />
		<title>Georgina's - Quincenera</title>
	</head>
	
	<?php
	}

}

