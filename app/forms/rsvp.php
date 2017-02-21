<?php
use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Select;
use Phalcon\Validation\Validator\Email;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Numericality;

class RsvpForm extends Form
{
    public function initialize()
    {
		$form = new Form();
		
		$form->add(
		    new Text(
		        "first_name"
		    )
		);
		
		$form->add(
		    new Text(
		        "last_name"
		    )
		);
		
		
		
		$form->add(
		    new Text(
		        "address_line_1"
		    )
		);
		
		$form->add(
		    new Text(
		        "address_line_2"
		    )
		);
		
		
		$form->add(
		    new Text(
		        "city"
		    )
		);
		
		$form->add(
		    new Text(
		        "zip"
		    )
		);
		
		$form->add(
		    new Text(
		        "phone_number"
		    )
		);
		
		$form->add(
		    new Text(
		        "email"
		    )
		);
		
	
		
		
	
	}
}
    
