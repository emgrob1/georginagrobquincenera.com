<?php

class MystoryController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
		 $this->assets
            ->addCss('css/style.css');
            
    }

}

