<?php

class BlogController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
		  $this->assets
            ->addCss('css/style.css');
            
    }

}

