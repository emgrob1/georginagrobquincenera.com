<?php
session_start();
class PhotogalleryController extends \Phalcon\Mvc\Controller {

	public function indexAction() {
		if ($_SESSION['auth'] == 'auth') {
			
	$this -> viewAction();	

		} else {
			header('location:/login');
		}
	}


	public function uploadAction()
	{
	  if ($this->request->hasFiles() == true) {
    	echo 'true';	
        foreach ($this->request->getUploadedFiles() as $file){
        	 	echo 'true2';
			// $path = '/var/www/html/georginaquinceanera/public/images/uploads/';	
						$path = '../public/images/uploads/';	
              echo $path. $file->getName(), ' ', $file->getSize(). "\n";
			$filename  =  $file->getName();
			
			 
		$upload = new Uploads();
		 $upload->file_name  = $file->getName();
         $upload->date  = "2016-11-27";
		$success = $upload -> save();
		
		
		  if ($success) {
            echo "Thanks!";
			  if($file->moveTo($path . $file->getName())){
		
		
				  header('location:/photogallery');
			  }else{echo 'false1';}
        } else {
            echo "Sorry, the following problems were generated: ";

         
        }

		 
		
        }    	
    } else {
        echo 'File not uploaded';

	}
	}
	
	public function viewAction()
	{
		$upload = $this->modelsManager->executeQuery(
    "SELECT * FROM Uploads"
);
		$this->view->post = $upload;
	}
}

