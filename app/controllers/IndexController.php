<?php

use Phalcon\Mvc\Controller;

class IndexController extends ControllerBase
{

    public function indexAction()
    {

      $this->assets
            ->addCss('css/style.css');
            
    }

}

